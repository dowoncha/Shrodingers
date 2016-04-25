#include <cmath>
#include <complex>
#include <vector>
#include <unsupported/Eigen/FFT>

struct WaveFunction
{
  std::vector<std::complex<double>> points;
};

class Shrodinger
{
private:
  std::vector<double> xCoordinates;
  std::vector<double> momentum;
  std::vector<std::complex<double>> psiX;
  std::vector<std::complex<double>> psiModX;
  std::vector<std::complex<double>> psiModK;   // Momentum values
  std::vector<double> xPotential;              // Potential values

  // Fast fourier Transforms
  Eigen::FFT<double> fft;

  // Initial Parameters
  double hbar;     // Planck's constant
  double mass;     // Mass of particle
  double t;       // initial time
  double k0;       // minimum value of k

  int Nsize;

  double dt, dx, dk;       // change in time, x, k
  int steps;              // Iterations per time_step

  // Dt calculations
  double xEvolveHalf;
  double xEvolve;
  double kEvolve;
public:
  Shrodinger() :
    dt(0.01f),
    xEvolveHalf(0.0f),
    xEvolve(0.0f),
    kEvolve(0.0f)
  {
  }

  ~Shrodinger()
  {

  }

  void init(const std::vector<double>& x,
                  const std::vector<std::complex<double>>& psiX0,
                  const std::vector<double>& Vx,
                  double _k0,
                  double _hbar = 1.0f,
                  double _mass = 1.0f,
                  double t0 = 0.0f)
  {
    xCoordinates = x;
    psiX = psiX0;
    xPotential = Vx;
    k0 = _k0;
    hbar = _hbar;
    mass = _mass;
    t = t0;

    Nsize = xCoordinates.size();

    dx = xCoordinates.at(1) - xCoordinates.at(0);
    dk = 2 * M_PI / ( Nsize * dx);

    if (_k0 == 0.0f)
    {
      k0 = -0.5f * Nsize * dk;
    }
    else
    {
      assert(k0 < 0);
      k0 = _k0;
    }
    for (int i = 0; i < Nsize; ++i)
    {
      momentum.at(i) = k0 + dk * i;
    }

    computeKFromX();
    // x and k half/full steps

  }

  void setX(const std::vector<double>& _x)
  {
    xPotential = _x;
  }

  void setPsiX0(const std::vector<std::complex<double>>& psiX0)
  {
    psiX = psiX0;
  }

  // Set the initial wave function
  void setPsiX(const std::vector<std::complex<double>>& newPsi)
  {
    assert(newPsi.size() == Nsize);
    for (int i = 0; i < Nsize; ++i)
    {
      double exponential = std::exp(std::sqrt(-1) * momentum.at(0) * xCoordinates.at(i));
      psiModX.at(i) = newPsi.at(i) * exponential * dx / std::sqrt(2 * M_PI);
    }
    computeKFromX();
  }

  std::vector<std::complex<double>> getPsiX()
  {
    std::vector<std::complex<double>> out(Nsize);
    for (int i = 0; i < Nsize; ++i)
    {
      double exponential = std::exp(std::sqrt(-1) * momentum.at(0) * xCoordinates.at(i));
      out.push_back(psiModX.at(i) * exponential * std::sqrt(2 * M_PI) / dx);
    }
    return out;
  }

  void setPsiK(const std::vector<std::complex<double>>& newPsi)
  {
    assert(newPsi.size() == Nsize);

    for (int i = 0; i < Nsize; ++i)
    {
      double exponential = std::exp(std::sqrt(-1) * xCoordinates.at(i) * dk * i);
      psiModK.at(i) = newPsi.at(i) * exponential;
    }

    computeXFromK();
    computeKFromX();
  }

  /*
  std::vector<double>

    def _get_psi_k(self):
        return self.psi_mod_k * np.exp(-1j * self.x[0] * self.dk
                                        * np.arange(self.N))

    def _get_dt(self):
        return self.dt_

    def _set_dt(self, dt):
        assert dt != 0
        if dt != self.dt_:
            self.dt_ = dt
            self.x_evolve_half = np.exp(-0.5 * 1j * self.V_x
                                         / self.hbar * self.dt)
            self.x_evolve = self.x_evolve_half * self.x_evolve_half
            self.k_evolve = np.exp(-0.5 * 1j * self.hbar / self.m
                                    * (self.k * self.k) * self.dt)

  */
  double waveNorm(const std::vector<std::complex<double>>& waveFunction)
  {
    using namespace std;

    double sum = 0.0f;
    for (int i = 0; i < waveFunction.size(); ++i)
    {
      sum += pow(abs(waveFunction.at(i)), 2);
    }

    double coef = 2 * M_PI * dx;
    double norm = sqrt(sum * coef);

    return norm;
  }

  void computeKFromX()
  {
    fft.fwd(psiModX, psiModK);
  }

  void computeXFromK()
  {
    fft.inv(psiModK, psiModX);
  }

  void solve(int steps, double eps = 1e-3, int maxIteration = 1000)
  {
    assert (eps > 0);

    double t0 = t;
    auto oldPsiX = psiX;
    double dPsi = 2.0f * eps;

    int i = 0;
    while (dPsi > eps && i < maxIteration)
    {
      ++i;
      timeStep(1i * dt, steps);
      dPsi = waveNorm(psiX);
      oldPsiX = psiX;
    }
    t = t0;
  }

  void timeStep(double _dt, int steps=1)
  {
    assert (steps >= 0);

    // Set the new change in time
    dt = _dt;
    if (steps > 0)
    {
      for (int i = 0; i < psiModX.size(); ++i)
      {
        psiModX.at(i) *= xEvolveHalf;
      }

      for (int i = 0; i < steps - 1; ++i)
      {
        computeKFromX();
        for (int i = 0; i < psiModX.size(); ++i)
          psiModK.at(i) *= kEvolve;
        computeXFromK();
          psiModX.at(i) *= xEvolve;
      }

      computeKFromX();
      for (int i = 0; i < Nsize; ++i)
        psiModK.at(i) *= kEvolve;
      computeXFromK();
      for (int i = 0; i < Nsize; ++i)
        psiModX.at(i) *= xEvolveHalf;
      computeKFromX();
      for (int i = 0 ; i < Nsize; ++i)
        psiModX.at(i) /= waveNorm(psiModX);
      computeKFromX();
      t += dt * steps;
    }
  }
};

double theta(double x)
{
  return (x > 0) ? 1.0f : 0.0f;
}

std::vector<double> potentialBarrier(std::vector<double> x, double width, double height)
{
  std::vector<double> potential(x.size());

  for (int i = 0; i < x.size(); ++i)
  {
    double v = height * (theta(x.at(i)) - theta(x.at(i) - width));
    potential.push_back(v);
  }

  return potential;
}

std::vector<std::complex<double>> gaussX(std::vector<double> x, double width, double x0, double k0)
{
  using namespace std;

  vector<complex<double>> psiX0(x.size());

  double coef = pow(width * sqrt(M_PI), -0.5f);
  for (double xi : x)
  {
    complex<double> exponential = exp(-0.5f * pow((xi - x0 ) * 1.0f / width, 2) + std::sqrt(-1) * xi * k0);
    psiX0.push_back(coef * exponential);
  }

  return psiX0;
}

int main(int argc, char** argv)
{
  // time steps and duration
  double dt = 0.01f;
  int steps = 50;
  double tMax = 120.0f;

  // constants
  const double hbar = 1.0f;    // planck's constant
  const double mass = 1.9f;    // mass of particle

  // X coordinate ranges
  int xMax = std::pow(2, 11);
  double dx = 0.1f;

  std::vector<double> x(xMax);         // points in x domain
  for (int i = 0; i < xMax; ++i)
  {
    x.emplace_back(dx * (i - 0.5f * xMax));
  }

  // potential
  double V0 = 1.0f;
  double boxLength = hbar / std::sqrt(2 * mass * V0);
  double length3 = 3 * boxLength;
  double x0 = -60.0f * boxLength;

  std::vector<double> xPotential = potentialBarrier(x, length3, V0);
  for (int i = 0; i < xPotential.size(); ++i)
  {
    if (x.at(i) < -98.0f)
      x.at(i) = 1e6;
    if (x.at(i) > 98.0f)
      x.at(i) = 1e6;
  }

  double p0 = std::sqrt(2.0f * mass * 0.2f * V0);
  double dp2 = p0 * p0 * 1.0f / 80.0f;
  double d = hbar / std::sqrt(2.0f * dp2);

  double k0 = p0 / hbar;
  double v0 = p0 / mass;
  std::vector<std::complex<double>> psiX0 = gaussX(x, d, x0, k0);

  assert(x.size() == xMax);
  assert(xPotential.size() == xMax);
  assert(psiX0.size() == xMax);

  Shrodinger s;
  s.init(x, psiX0, xPotential, -28, hbar, mass);
  s.solve(dt);
}
