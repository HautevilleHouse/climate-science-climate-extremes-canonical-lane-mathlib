import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceClimateExtremesCanonicalLaneLean.MilankovitchCycle
import HautevilleHouse.ClimateScienceClimateExtremesCanonicalLaneLean.DansgaardOeschgerEvent
import HautevilleHouse.ClimateScienceClimateExtremesCanonicalLaneLean.IsotopicPaleothermometry
import HautevilleHouse.ClimateScienceClimateExtremesCanonicalLaneLean.EnergyBalanceModel

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | { object := _, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse
