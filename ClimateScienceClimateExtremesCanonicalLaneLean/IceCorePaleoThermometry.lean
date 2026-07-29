import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremes

structure IceCorePaleoThermometryPackage where
  deltaODataset : Prop
  temperatureReconstruction : Prop
  ageModelEstablished : Prop
  resolutionAnnual : Prop
  temporalCoverage : Prop

structure IceCorePaleoThermometryEvidence (P : IceCorePaleoThermometryPackage) where
  deltaODatasetClosed : P.deltaODataset
  temperatureReconstructionClosed : P.temperatureReconstruction
  ageModelEstablishedClosed : P.ageModelEstablished
  resolutionAnnualClosed : P.resolutionAnnual
  temporalCoverageClosed : P.temporalCoverage

def IceCorePaleoThermometryClosed (P : IceCorePaleoThermometryPackage) : Prop :=
  P.deltaODataset ∧ P.temperatureReconstruction ∧ P.ageModelEstablished ∧
  P.resolutionAnnual ∧ P.temporalCoverage

theorem ice_core_paleo_thermometry_closed_from_evidence
    (P : IceCorePaleoThermometryPackage) (E : IceCorePaleoThermometryEvidence P) :
    IceCorePaleoThermometryClosed P := by
  exact And.intro E.deltaODatasetClosed
    (And.intro E.temperatureReconstructionClosed
      (And.intro E.ageModelEstablishedClosed
        (And.intro E.resolutionAnnualClosed E.temporalCoverageClosed)))

end ClimateScienceClimateExtremes
end HautevilleHouse