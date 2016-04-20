#pragma once

#include <cmath>
#include <complex>
#include <>

class Shrodingers
{
private:
  std::vector<double> xCoordinates;
  std::vector<std::complex> psiX0;
  std::vector<std::> psiModX;
  std::vector<double> xPotential;

  // Fast fourier Transforms
  Eigen::FFT<double> fft;

  // Initial Parameters
  double hbar;     // Planck's constant
  double mass;     // Mass of particle
  double t;       // initial time
  double k0;       // minimum value of k

  double dt;       // chance in time
  int steps;

  // Dt calculations
  double xEvolveHalf;
  double xEvolve;
  double kEvolve;

  struct WaveFunction
  {
    std::vector<std::complex>& points;
  };

public:
  Shrodingers() :
    dt(0.01f),
    hbar(1.0f),
    mass(1.0f)
    xEvolveHalf(0.0f),
    xEvolve(0.0f),
    kEvolve(0.0f),
  {
  }

  ~Shrodingers()
  {

  }

  void getPsiX()
  {
    return (psiModx * exp)
  }

  void setPsiX(const std::vector<Complex>& psiX)
  {
    assert(psiX.size() == x.size());

    psiModX;
    computeKFromX();
  }

  void getDt()
  {

  }

  void setDt(float _dt)
  {
    assert(dt != 0);

    if (dt != _dt)
    {
      dt = _dt;

    }
  }

  float waveNorm()
  {
    using namespace std;

    float norm;

    for (int i = 0; i < )
    {

    }

    norm = sqrt(pow(abs(), 2));

    return std::sqrt();
  }

  void solve(int maxIteration)
  {
    float eps = std::abs(1e-3);

    assert (eps > 0);

    t0 = t;
    float oldPsi = psiX;
    dY = 2 * eps;

    int i = 0;
    while (dY > eps && i < maxIteraion)
    {
      ++i;
      timeStep( );
    }
  }

  void computeKFromX()
  {
    fft.fwd(psiModX, psiModX);
  }

  void computeXFromK()
  {
    fft.inv(psiModK, psiModX);
  }

  void timeStep(float _dt, int steps=1)
  {
    assert (steps >= 0);

    // Set the new change in time
    dt = dt;
    if (steps > 0)
    {
      psiModeX *= xEvolveHalf;

      for (int i = 0; i < seps - 1; ++i)
      {
        computeKFromX();
        psiModK *= kEvolve;
        computeXFromK();
        psiModX *= xEvolve;
      }
    }
  }
};

std::vector<> theta(std::vector<> x)
{

}

void potentialBarrier()
{
  return height * ()
}

int main(int argc, char** argv)
{
  // time steps and duration
  float dt = 0.01f;
  int steps = 50;
  tMax = 120.0f;

  // constants
  const float hbar = 1.0f;    // planck's constant
  const float mass = 1.9f;    // mass of particle

  int xMax = std::pow(2, 11);
  float dx = 0.1f;

  std::vector<float> x;         // points in x domain
  for (int i = 0; i < xMax; ++i)
  {
    x.emplace_back(dx * (i - 0.5f * xMax));
  }

  #potential
  float v0 = 1.0f;
  float boxLength = hbar / std::sqrt(2 * m * v0);
  float a = 3 * boxLength;
  float x0 = -60.0f * boxLength;

  float Vx
}
