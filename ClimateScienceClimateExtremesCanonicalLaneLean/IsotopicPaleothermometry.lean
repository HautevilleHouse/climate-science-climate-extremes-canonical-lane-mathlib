import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure IceCore where
  depth : ℕ
  age : ℕ
  deuteriumExcess : ℕ
  oxygen18Ratio : ℕ

structure IsotopicPaleothermometry where
  iceCoreData : IceCore
  deutriumTemperatureCalibration : Prop
  oxygen18TemperatureCalibration : Prop
  temperatureReconstruction : Prop
  orbitalForcingCorrelation : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometry) where
  deutriumTemperatureCalibrationClosed : I.deutriumTemperatureCalibration
  oxygen18TemperatureCalibrationClosed : I.oxygen18TemperatureCalibration
  temperatureReconstructionClosed : I.temperatureReconstruction
  orbitalForcingCorrelationClosed : I.orbitalForcingCorrelation

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometry) : Prop :=
  I.deutriumTemperatureCalibration ∧ I.oxygen18TemperatureCalibration ∧ I.temperatureReconstruction ∧ I.orbitalForcingCorrelation

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometry) (E : IsotopicPaleothermometryEvidence I) : IsotopicPaleothermometryClosed I := by
  exact And.intro E.deutriumTemperatureCalibrationClosed (And.intro E.oxygen18TemperatureCalibrationClosed (And.intro E.temperatureReconstructionClosed E.orbitalForcingCorrelationClosed))

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse