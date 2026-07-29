import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure PaleoclimateDynamicsPackage where
  milankovitchCycles : Prop
  iceCoreProxies : Prop
  orbitalForcing : Prop
  glacialInterglacialTransitions : Prop
  paleoclimateConstrained : Prop

structure PaleoclimateDynamicsEvidence (P : PaleoclimateDynamicsPackage) where
  milankovitchCyclesClosed : P.milankovitchCycles
  iceCoreProxiesClosed : P.iceCoreProxies
  orbitalForcingClosed : P.orbitalForcing
  glacialInterglacialTransitionsClosed : P.glacialInterglacialTransitions
  paleoclimateConstrainedClosed : P.paleoclimateConstrained

def PaleoclimateDynamicsClosed (P : PaleoclimateDynamicsPackage) : Prop :=
  P.milankovitchCycles ∧ P.iceCoreProxies ∧ P.orbitalForcing ∧
  P.glacialInterglacialTransitions ∧ P.paleoclimateConstrained

theorem paleoclimate_dynamics_closed_from_evidence
    (P : PaleoclimateDynamicsPackage) (E : PaleoclimateDynamicsEvidence P) :
    PaleoclimateDynamicsClosed P := by
  exact And.intro E.milankovitchCyclesClosed
    (And.intro E.iceCoreProxiesClosed
      (And.intro E.orbitalForcingClosed
        (And.intro E.glacialInterglacialTransitionsClosed E.paleoclimateConstrainedClosed)))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse