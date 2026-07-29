import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SeismicTravelTimeTomographyPackage where
  velocityModel : Type u
  rayPaths : List (ℝ³ → ℝ³)
  travelTimes : List ℝ
  inversionConvergence : Prop
  resolutionAnalysis : Prop

structure SeismicTravelTimeTomographyEvidence (S : SeismicTravelTimeTomographyPackage) where
  inversionConvergenceClosed : S.inversionConvergence
  resolutionAnalysisClosed : S.resolutionAnalysis

def SeismicTravelTimeTomographyClosed (S : SeismicTravelTimeTomographyPackage) : Prop :=
  S.inversionConvergence ∧ S.resolutionAnalysis

theorem seismic_travel_time_tomography_closed_from_evidence
    (S : SeismicTravelTimeTomographyPackage)
    (E : SeismicTravelTimeTomographyEvidence S) : SeismicTravelTimeTomographyClosed S := by
  exact And.intro E.inversionConvergenceClosed E.resolutionAnalysisClosed

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse