import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SoilMechanicsPackage where
  granularMaterial : Type u
  cohesion : Prop
  frictionAngle : Prop
  effectiveStressPrinciple : Prop
  consolidationBehavior : Prop

structure SoilMechanicsEvidence (S : SoilMechanicsPackage) where
  cohesionClosed : S.cohesion
  frictionAngleClosed : S.frictionAngle
  effectiveStressPrincipleClosed : S.effectiveStressPrinciple
  consolidationBehaviorClosed : S.consolidationBehavior

def SoilMechanicsClosed (S : SoilMechanicsPackage) : Prop :=
  S.cohesion ∧ S.frictionAngle ∧ S.effectiveStressPrinciple ∧ S.consolidationBehavior

theorem soil_mechanics_closed_from_evidence (S : SoilMechanicsPackage)
    (E : SoilMechanicsEvidence S) : SoilMechanicsClosed S := by
  exact And.intro E.cohesionClosed
    (And.intro E.frictionAngleClosed
      (And.intro E.effectiveStressPrincipleClosed E.consolidationBehaviorClosed))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
