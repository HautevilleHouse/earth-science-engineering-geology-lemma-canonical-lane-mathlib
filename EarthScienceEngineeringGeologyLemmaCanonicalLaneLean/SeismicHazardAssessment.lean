import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SeismicHazardAssessment where
  seismicSourceModel : Prop
  attenuationRelation : Prop
  siteAmplification : Prop
  hazardCurve : Prop
  returnPeriod : ℝ
  groundMotionParameter : Prop

structure SeismicHazardEvidence (S : SeismicHazardAssessment) where
  seismicSourceModelClosed : S.seismicSourceModel
  attenuationRelationClosed : S.attenuationRelation
  siteAmplificationClosed : S.siteAmplification
  hazardCurveClosed : S.hazardCurve
  groundMotionParameterClosed : S.groundMotionParameter

def SeismicHazardClosed (S : SeismicHazardAssessment) : Prop :=
  S.seismicSourceModel ∧ S.attenuationRelation ∧ S.siteAmplification ∧ S.hazardCurve ∧ S.groundMotionParameter

theorem seismic_hazard_closed_from_evidence (S : SeismicHazardAssessment) (Ev : SeismicHazardEvidence S) : SeismicHazardClosed S := by
  exact And.intro Ev.seismicSourceModelClosed (And.intro Ev.attenuationRelationClosed (And.intro Ev.siteAmplificationClosed (And.intro Ev.hazardCurveClosed Ev.groundMotionParameterClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse