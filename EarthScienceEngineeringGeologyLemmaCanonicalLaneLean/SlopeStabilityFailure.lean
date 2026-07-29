import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SlopeStabilityFailurePackage where
  shearStrengthModel : Prop
  porePressureResponse : Prop
  limitEquilibriumCondition : Prop
  failureSurfaceGeometry : Prop
  stabilityIndex : Prop

structure SlopeStabilityFailureEvidence (S : SlopeStabilityFailurePackage) where
  shearStrengthModelClosed : S.shearStrengthModel
  porePressureResponseClosed : S.porePressureResponse
  limitEquilibriumConditionClosed : S.limitEquilibriumCondition
  failureSurfaceGeometryClosed : S.failureSurfaceGeometry
  stabilityIndexClosed : S.stabilityIndex

def SlopeStabilityFailureClosed (S : SlopeStabilityFailurePackage) : Prop :=
  S.shearStrengthModel ∧ S.porePressureResponse ∧ S.limitEquilibriumCondition ∧
  S.failureSurfaceGeometry ∧ S.stabilityIndex

theorem slope_stability_failure_closed_from_evidence (S : SlopeStabilityFailurePackage)
    (E : SlopeStabilityFailureEvidence S) : SlopeStabilityFailureClosed S := by
  exact And.intro E.shearStrengthModelClosed
    (And.intro E.porePressureResponseClosed
      (And.intro E.limitEquilibriumConditionClosed
        (And.intro E.failureSurfaceGeometryClosed E.stabilityIndexClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
