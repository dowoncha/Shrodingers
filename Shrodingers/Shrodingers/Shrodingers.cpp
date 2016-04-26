// Shrodingers.cpp : Find a wave function of discrete x points

#include "stdafx.h"

#define M_PI 3.14159265359					// M_PI is not declared for windows...
#define M_TWOPIINVERSE 0.3989422804			// 1 / std(2 * PI)
#define M_I sqrt(-1)						// imaginary number

#include <cmath>
#include <complex>
#include <vector>
#include <iostream>
#include <fstream>
#include <unsupported/Eigen/FFT>			// Fast fourier transforms

using namespace std;									// Using the standard library

typedef vector<complex<double>> wave_function_t;		// A wave function is a vector of complex terms.

class Shrodinger
{
	typedef size_t sample_size_t;

private:
	vector<double> x_;						// x coordinate
	vector<double> k_;						// momentum
	vector<double> Vx_;						// Potential

	sample_size_t size_;						// x_.size == k.size == vx.size

	//wave_function_t psiX_;					//
	wave_function_t psiX_;				//
	wave_function_t psiK_;				//

	Eigen::FFT<double> fft;					// Eigen is a library to perform fast fourier transforms.

	// Initial Parameters
	double hbar_;		// Planck's constant
	double mass_;		// Mass of particle
	double t_;			// Current time
	double t_initial_;	// Initial time
	double kMin_;       // minimum momentum

	double dt_, dx_, dk_;      // change in time, x, k

	wave_function_t x_half_step_;
	wave_function_t x_full_step_;
	wave_function_t k_full_step_;
public:
	Shrodinger(
		const vector<double>& x,						// x domain
		const wave_function_t& psiX0,		    // Initial wave function calculated from the gaussian
		const vector<double>& Vx,						// Potential at each x
		double kMin,									// Initial momentum
		double hbar = 1.0f,								// Planck's constant default 1.0
		double mass = 1.0f,								// mass default = 1.0
		double t0 = 0.0f) :								// Initial time default = 0.0) :
		// Assignment
		x_(x),
		size_(x.size()),
		psiX_(size_),
		psiK_(size_),
		Vx_(Vx),
		hbar_(hbar),
		mass_(mass),
		t_(t0),							// Initial time
		dt_(0.01),						// Set default change in time dt=0.01;
		dx_(x_.at(1) - x_.at(0)),		// Initial dx is difference between firsttwo points
		dk_(2 * M_PI / (size_ * dx_))
	{
		// If minimum momentum is 10 then calculate from total values
		if (kMin == 0.0f)
		{
			kMin_ = -0.5 * size_* dk_;
		}
		else
		{
			assert(kMin_ < 0);
			kMin_ = kMin;
		}

		// Calculate momentum from each point as minimum plus change in momentum
		for (size_t i = 0; i < size_; ++i)
		{
			k_.push_back(kMin_ + dk_ * i);
		}

		set_psiX(psiX0);

		printf("Size of k_: %lu\n", k_.size());

		computeKFromX();
	}

	~Shrodinger()
	{
	}

	wave_function_t get_psiX()
	{
		wave_function_t psiX(size_);

		for (sample_size_t i = 0; i < size_; ++i)
		{
			psiX.push_back(psiX_.at(i) * exp(M_I * k_.at(0) * x_.at(i)) / (dx_ * M_TWOPIINVERSE));
		}

		return psiX;
	}

	void set_psiX(const wave_function_t& psiX)
	{
		assert(psiX.size() == size_);

		for (sample_size_t i = 0; i < size_; ++i)
		{
			psiX_.at(i) = psiX.at(i) * exp(M_I * k_.at(0) * x_.at(i)) * dx_ * M_TWOPIINVERSE;	// Yx = Yx*e^(i*k_0*x_n) * dx / sqrt(2pi)
		}

		// Normalize the wave function
		double norm = wave_norm(psiX_);
		for (auto& term : psiX_)
		{
			term /= norm;
		}
	}

	wave_function_t get_psiK()
	{

	}

	void set_psiK(const wave_function_t& psiK)
	{
		assert(psiK.size() == size_);

		for (sample_size_t i = 0; i < size_; ++i)
		{
			psiK_.at(i) = psiK.at(i) * exp(M_I * x_.at(0) * dk_ * (int32_t)i);
		}

		// Full step in both x and k
		computeXFromK();
		computeKFromX();
	}

	void set_dt(double dt)
	{
		x_half_step_.clear();
		x_full_step_.clear();
		k_full_step_.clear();

		assert(dt != 0.0);

		if (dt != dt_)
		{
			dt_ = dt;
			// Calculate half, and full steps for the new dt
			for (sample_size_t i = 0; i < size_; ++i)
			{
				x_half_step_.push_back(exp(-0.5 * M_I * Vx_.at(i) / hbar_ * dt_));
				x_full_step_.push_back(x_half_step_.at(i) * x_half_step_.at(i));
				k_full_step_.push_back(exp(-0.5 * M_I * hbar_ / mass_ * (k_.at(i) * k_.at(i)) * dt_));
				//k_full_step_.at(i) = exp(-0.5 * M_I * hbar_ / mass_ * (k_.at(i) * k_.at(i)) * dt_);
			}
		}
	}

	// Normalize psiX
	double wave_norm(wave_function_t wave)
	{
		double sum = 0.0;
		for (auto& term : psiX_)
		{
			sum += pow(abs(term), 2);
		}

		return sqrt(sum * 2 * M_PI / dx_);
	}

	void computeKFromX()
	{
		if (psiX_.size() != psiK_.size())
		{
			fprintf(stderr, "error compute k from x, psiX size: %lu, psiK size: %lu\n", psiX_.size(), psiK_.size());
			return;
		}

		fft.fwd(psiX_, psiK_);
	}

	void computeXFromK()
	{
		fft.inv(psiK_, psiX_);
	}

	void solve(int steps, double eps = 1e-4, int maxIteration = 1000)
	{
		assert(eps > 0);

		double t0 = t_;
		wave_function_t oldPsiX = get_psiX();
		double dPsi = 2.0f * eps;

		int i = 0;
		// while the max iteration has not been reached.
		while (dPsi > eps && i < maxIteration)
		{
			++i;
			time_step(M_I * dt_, steps);		// Go through n time steps
			dPsi = wave_norm(psiX_);
			oldPsiX = psiX_;
		}
		t_ = t0;
	}

	void time_step(double dt, int steps = 1)
	{
		assert(steps >= 0);

		set_dt(dt);							// Set the new change in time

		// Evolve each x by a half step
		for (sample_size_t i = 0; i < size_; ++i ) { psiX_.at(i) *= x_half_step_.at(i); }

		for (int i = 0; i < steps - 1; ++i)
		{
			computeKFromX();
			for (sample_size_t i = 0; i < size_; ++i) { psiK_.at(i) *= k_full_step_.at(i); }
			computeXFromK();
			psiX_.at(i) *= x_full_step_.at(i);
		}

		computeKFromX();
		for (sample_size_t i = 0; i < size_; ++i) { psiK_.at(i) *= k_full_step_.at(i); }
		computeXFromK();
		for (sample_size_t i = 0; i < size_; ++i) { psiX_.at(i) *= x_half_step_.at(i); }
		computeKFromX();
		double invnorm = 1.0 / wave_norm(psiX_);
		for (sample_size_t i = 0; i < size_; ++i) { psiX_.at(i) *= invnorm; }
		computeKFromX();
		t_ += dt * steps;
	}

	void output_values()
	{
		ofstream out("result.txt", ofstream::out);

		out << "X values: \n";
		for (sample_size_t i = 0; i < size_; ++i)
		{
			out << x_.at(i) << '\t';

			if (i % 15 == 0)
			{
				out << '\n';
			}
		}

		out << "\nPsiY terms: \n";
		for (sample_size_t i = 0; i < size_; ++i)
		{
			out << psiX_.at(i) << '\t';

			if (i % 15 == 0)
			{
				out << '\n';
			}
		}

		out.close();
	}
};

double theta(double x)
{
	return (x > 0) ? 1.0 : 0.0;
}

// Create a vector of potentials at each x
vector<double> potential_barrier(const vector<double>& x, double width, double height)
{
	vector<double> potential;

	for (size_t i = 0; i < x.size(); ++i)
	{
		double v = height * (theta(x.at(i)) - theta(x.at(i) - width));
		potential.push_back(v);
	}

	return potential;
}

// Create a gaussian wave functino from x domain points and intial box parameters
wave_function_t gaussian_wave(vector<double> x, double width, double x0, double k0)
{
	wave_function_t psiX;

	double coef = pow(width * sqrt(M_PI), -0.5);

	for (double xi : x)
	{
		complex<double> exponential = exp(-0.5f * pow((xi - x0) * 1.0f / width, 2) + sqrt(-1) * xi * k0);
		psiX.push_back(coef * exponential);
	}

	return psiX;
}

int main(int argc, char** argv)
{
	// time steps and duration
	double dt = 0.01;
	int steps = 50;
	double tMax = 120.0;

	// constants
	const double hbar = 1.0;    // planck's constant
	const double mass = 1.9;    // mass of particle

	int xMax = pow(2, 11);		 // # of points in the x domain
	double dx = 0.1;			 // change in x

	// points in x domain
	vector<double> x;
	for (int i = 0; i < xMax; ++i)
	{
		x.push_back(dx * (i - 0.5 * xMax));
	}

	printf("Size of x: %lu\n", x.size());

	// potential
	double V0 = 1.0;
	double length = hbar / sqrt(2 * mass * V0);
	double length3 = 3 * length;
	double x0 = -60.0 * length;

	vector<double> Vx = potential_barrier(x, length3, V0);

	printf("Size of Vx: %lu\n", Vx.size());
	assert(Vx.size() == x.size());

	for (size_t i = 0; i < Vx.size(); ++i)
	{
		if (x.at(i) < -98.0)
			x.at(i) = 1e6;
		if (x.at(i) > 98.0)
			x.at(i) = 1e6;
	}

	double p0 = std::sqrt(2.0f * mass * 0.2f * V0);
	double dp2 = p0 * p0 * 1.0f / 80.0f;
	double d = hbar / std::sqrt(2.0f * dp2);

	double k0 = p0 / hbar;
	double v0 = p0 / mass;
	wave_function_t psiX0 = gaussian_wave(x, d, x0, k0);

	printf("Size of Xmas: %d\n", xMax);
	printf("Size of psiX: %d\n", psiX0.size());
	assert(x.size() == xMax);
	assert(Vx.size() == xMax);
	assert(psiX0.size() == xMax);

	Shrodinger s(x, psiX0, Vx, -28.0, hbar, mass);
	s.solve(dt);
	s.output_values();
	printf("Shrodingers solved! Enter q to quit\n");

	char enter;
	cin >> enter;

	return 0;
}
