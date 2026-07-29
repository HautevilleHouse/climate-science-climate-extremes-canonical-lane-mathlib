import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure EnergyBalanceModel where
  shortwaveAbsorption : Prop
  longwaveEmission : Prop
  albedoEffect : Prop
  greenhouseForcing : Prop
  equilibriumTemperature : Prop

structure EnergyBalanceModelEvidence (M : EnergyBalanceModel) where
  shortwaveAbsorptionClosed : M.shortwaveAbsorption
  longwaveEmissionClosed : M.longwaveEmission
  albedoEffectClosed : M.albedoEffect
  greenhouseForcingClosed : M.greenhouseForcing
  equilibriumTemperatureClosed : M.equilibriumTemperature

def EnergyBalanceModelClosed (M : EnergyBalanceModel) : Prop :=
  M.shortwaveAbsorption ∧ M.longwaveEmission ∧ M.albedoEffect ∧ M.greenhouseForcing ∧ M.equilibriumTemperature

theorem energy_balance_model_closed_from_evidence (M : EnergyBalanceModel) (E : EnergyBalanceModelEvidence M) : EnergyBalanceModelClosed M := by
  exact And.intro E.shortwaveAbsorptionClosed (And.intro E.longwaveEmissionClosed (And.intro E.albedoEffectClosed (And.intro E.greenhouseForcingClosed E.equilibriumTemperatureClosed)))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse