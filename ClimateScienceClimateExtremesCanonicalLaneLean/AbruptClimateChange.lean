import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure AbruptClimateChangePackage where
  dansgaardOeschgerEvents : Prop
  heinrichEvents : Prop
  tipingPoints : Prop
  atlanticMeridionalOverturning : Prop
  abruptChangeConstrained : Prop

structure AbruptClimateChangeEvidence (A : AbruptClimateChangePackage) where
  dansgaardOeschgerEventsClosed : A.dansgaardOeschgerEvents
  heinrichEventsClosed : A.heinrichEvents
  tipingPointsClosed : A.tipingPoints
  atlanticMeridionalOverturningClosed : A.atlanticMeridionalOverturning
  abruptChangeConstrainedClosed : A.abruptChangeConstrained

def AbruptClimateChangeClosed (A : AbruptClimateChangePackage) : Prop :=
  A.dansgaardOeschgerEvents ∧ A.heinrichEvents ∧ A.tipingPoints ∧
  A.atlanticMeridionalOverturning ∧ A.abruptChangeConstrained

theorem abrupt_climate_change_closed_from_evidence
    (A : AbruptClimateChangePackage) (E : AbruptClimateChangeEvidence A) :
    AbruptClimateChangeClosed A := by
  exact And.intro E.dansgaardOeschgerEventsClosed
    (And.intro E.heinrichEventsClosed
      (And.intro E.tipingPointsClosed
        (And.intro E.atlanticMeridionalOverturningClosed E.abruptChangeConstrainedClosed)))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse