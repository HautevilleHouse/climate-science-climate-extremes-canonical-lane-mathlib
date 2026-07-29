import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure RadiativeBalancePackage where
  incomingSolarRadiation : Prop
  albedo : Prop
  outgoingLongwaveRadiation : Prop
  greenhouseEffect : Prop
  radiativeConstrained : Prop

structure RadiativeBalanceEvidence (R : RadiativeBalancePackage) where
  incomingSolarRadiationClosed : R.incomingSolarRadiation
  albedoClosed : R.albedo
  outgoingLongwaveRadiationClosed : R.outgoingLongwaveRadiation
  greenhouseEffectClosed : R.greenhouseEffect
  radiativeConstrainedClosed : R.radiativeConstrained

def RadiativeBalanceClosed (R : RadiativeBalancePackage) : Prop :=
  R.incomingSolarRadiation ∧ R.albedo ∧ R.outgoingLongwaveRadiation ∧
  R.greenhouseEffect ∧ R.radiativeConstrained

theorem radiative_balance_closed_from_evidence
    (R : RadiativeBalancePackage) (E : RadiativeBalanceEvidence R) :
    RadiativeBalanceClosed R := by
  exact And.intro E.incomingSolarRadiationClosed
    (And.intro E.albedoClosed
      (And.intro E.outgoingLongwaveRadiationClosed
        (And.intro E.greenhouseEffectClosed E.radiativeConstrainedClosed)))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse