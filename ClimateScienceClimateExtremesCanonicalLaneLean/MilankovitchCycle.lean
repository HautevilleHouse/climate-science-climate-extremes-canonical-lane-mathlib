import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure MilankovitchCycle where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  cyclePeriod : ℝ

structure MilankovitchCycleEvidence (M : MilankovitchCycle) where
  eccentricityClosed : M.eccentricity > 0
  obliquityClosed : M.obliquity ≠ 0
  precessionClosed : M.precession ≠ 0
  insolationAnomalyComputed : M.insolationAnomaly = M.eccentricity * Real.sin M.obliquity
  cyclePeriodClosed : M.cyclePeriod > 0

def MilankovitchCycleClosed (M : MilankovitchCycle) : Prop :=
  M.eccentricity > 0 ∧ M.obliquity ≠ 0 ∧ M.precession ≠ 0 ∧
  M.insolationAnomaly = M.eccentricity * Real.sin M.obliquity ∧ M.cyclePeriod > 0

theorem milankovitch_cycle_closed_from_evidence (M : MilankovitchCycle)
    (E : MilankovitchCycleEvidence M) : MilankovitchCycleClosed M := by
  exact And.intro E.eccentricityClosed (And.intro E.obliquityClosed
    (And.intro E.precessionClosed (And.intro E.insolationAnomalyComputed E.cyclePeriodClosed)))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse
