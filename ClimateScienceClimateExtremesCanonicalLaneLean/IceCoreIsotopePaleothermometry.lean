import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateExtremesCanonicalLaneLean

structure IceCoreSample where
  depth : ℝ
  delta18O : ℝ
  deltaD : ℝ

structure IsotopePaleothermometryPackage where
  coreSamples : List IceCoreSample
  temperatureReconstruction : ℝ → ℝ
  calibrationCurve : ℝ → ℝ
  reconstructionInterval : ℝ × ℝ

structure IsotopePaleothermometryEvidence (I : IsotopePaleothermometryPackage) where
  calibrationApplied : I.temperatureReconstruction 0 = I.calibrationCurve (I.coreSamples.head?.map (λ s => s.delta18O) |>.getD 0)
  reconstructionNonempty : I.reconstructionInterval.1 < I.reconstructionInterval.2

def IsotopePaleothermometryClosed (I : IsotopePaleothermometryPackage) : Prop :=
  I.temperatureReconstruction 0 = I.calibrationCurve (I.coreSamples.head?.map (λ s => s.delta18O) |>.getD 0) ∧
  I.reconstructionInterval.1 < I.reconstructionInterval.2

theorem isotope_paleothermometry_closed_from_evidence (I : IsotopePaleothermometryPackage) (E : IsotopePaleothermometryEvidence I) : IsotopePaleothermometryClosed I :=
  And.intro E.calibrationApplied E.reconstructionNonempty

end ClimateScienceClimateExtremesCanonicalLaneLean
end HautevilleHouse