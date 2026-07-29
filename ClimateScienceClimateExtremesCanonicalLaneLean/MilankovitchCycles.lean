import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure OrbitalParameters where
  eccentricity : ℕ
  obliquity : ℕ
  precession : ℕ

structure MilankovitchCycles where
  orbitalParameters : OrbitalParameters
  insolationVariation : Prop
  iceAgeTiming : Prop
  spectralPeaks : Prop
  climateResponse : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCycles) where
  insolationVariationClosed : M.insolationVariation
  iceAgeTimingClosed : M.iceAgeTiming
  spectralPeaksClosed : M.spectralPeaks
  climateResponseClosed : M.climateResponse

def MilankovitchCyclesClosed (M : MilankovitchCycles) : Prop :=
  M.insolationVariation ∧ M.iceAgeTiming ∧ M.spectralPeaks ∧ M.climateResponse

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCycles) (E : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro E.insolationVariationClosed (And.intro E.iceAgeTimingClosed (And.intro E.spectralPeaksClosed E.climateResponseClosed))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse