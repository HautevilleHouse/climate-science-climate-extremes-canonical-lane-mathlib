import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure DansgaardOeschgerEvent where
  warmingRate : ℕ
  durationYears : ℕ
  magnitudeCelsius : ℕ

structure DansgaardOeschgerEvents where
  eventCount : ℕ
  typicalWarming : Prop
  abruptTransition : Prop
  bondCycleCorrelation : Prop
  atlanticMeridionalOverturningCirculationLink : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEvents) where
  typicalWarmingClosed : D.typicalWarming
  abruptTransitionClosed : D.abruptTransition
  bondCycleCorrelationClosed : D.bondCycleCorrelation
  atlanticMeridionalOverturningCirculationLinkClosed : D.atlanticMeridionalOverturningCirculationLink

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEvents) : Prop :=
  D.typicalWarming ∧ D.abruptTransition ∧ D.bondCycleCorrelation ∧ D.atlanticMeridionalOverturningCirculationLink

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEvents) (E : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro E.typicalWarmingClosed (And.intro E.abruptTransitionClosed (And.intro E.bondCycleCorrelationClosed E.atlanticMeridionalOverturningCirculationLinkClosed))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse