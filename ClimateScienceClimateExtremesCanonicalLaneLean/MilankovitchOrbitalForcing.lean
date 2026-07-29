import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremes

structure MilankovitchOrbitalForcingPackage where
  eccentricityCycles : Prop
  obliquityCycles : Prop
  precessionCycles : Prop
  insolationComputed : Prop
  climateResponseDetected : Prop

structure MilankovitchOrbitalForcingEvidence (P : MilankovitchOrbitalForcingPackage) where
  eccentricityCyclesClosed : P.eccentricityCycles
  obliquityCyclesClosed : P.obliquityCycles
  precessionCyclesClosed : P.precessionCycles
  insolationComputedClosed : P.insolationComputed
  climateResponseDetectedClosed : P.climateResponseDetected

def MilankovitchOrbitalForcingClosed (P : MilankovitchOrbitalForcingPackage) : Prop :=
  P.eccentricityCycles ∧ P.obliquityCycles ∧ P.precessionCycles ∧
  P.insolationComputed ∧ P.climateResponseDetected

theorem milankovitch_orbital_forcing_closed_from_evidence
    (P : MilankovitchOrbitalForcingPackage) (E : MilankovitchOrbitalForcingEvidence P) :
    MilankovitchOrbitalForcingClosed P := by
  exact And.intro E.eccentricityCyclesClosed
    (And.intro E.obliquityCyclesClosed
      (And.intro E.precessionCyclesClosed
        (And.intro E.insolationComputedClosed E.climateResponseDetectedClosed)))

end ClimateScienceClimateExtremes
end HautevilleHouse