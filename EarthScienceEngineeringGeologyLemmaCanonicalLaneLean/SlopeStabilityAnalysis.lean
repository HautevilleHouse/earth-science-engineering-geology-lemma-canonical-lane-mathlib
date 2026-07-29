import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SlopeStabilityPackage where
  failureSurfaceIdentified : Prop
  shearStrengthParameters : Prop
  porePressureRegime : Prop
  factorOfSafetyComputed : Prop
  stabilizationMeasuresDesigned : Prop

def SlopeStabilityClosed (S : SlopeStabilityPackage) : Prop :=
  S.failureSurfaceIdentified ∧ S.shearStrengthParameters ∧ S.porePressureRegime ∧
  S.factorOfSafetyComputed ∧ S.stabilizationMeasuresDesigned

theorem slope_stability_closed_from_evidence (S : SlopeStabilityPackage)
    (h1 : S.failureSurfaceIdentified) (h2 : S.shearStrengthParameters)
    (h3 : S.porePressureRegime) (h4 : S.factorOfSafetyComputed)
    (h5 : S.stabilizationMeasuresDesigned) : SlopeStabilityClosed S := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
