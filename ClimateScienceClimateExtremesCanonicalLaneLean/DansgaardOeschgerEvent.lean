import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure DansgaardOeschgerEvent where
  temperatureAnomaly : ℝ
  duration : ℝ
  onsetRate : ℝ
  terminationRate : ℝ
  iceCoreSite : String

structure DansgaardOeschgerEvidence (D : DansgaardOeschgerEvent) where
  temperatureAnomalyClosed : D.temperatureAnomaly > 0
  durationClosed : D.duration > 0
  onsetRateClosed : D.onsetRate > 0
  terminationRateClosed : D.terminationRate < 0
  siteIdentified : D.iceCoreSite ≠ ""

def DansgaardOeschgerClosed (D : DansgaardOeschgerEvent) : Prop :=
  D.temperatureAnomaly > 0 ∧ D.duration > 0 ∧ D.onsetRate > 0 ∧
  D.terminationRate < 0 ∧ D.iceCoreSite ≠ ""

theorem dansgaard_oeschger_closed_from_evidence (D : DansgaardOeschgerEvent)
    (E : DansgaardOeschgerEvidence D) : DansgaardOeschgerClosed D := by
  exact And.intro E.temperatureAnomalyClosed (And.intro E.durationClosed
    (And.intro E.onsetRateClosed (And.intro E.terminationRateClosed E.siteIdentified)))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse
