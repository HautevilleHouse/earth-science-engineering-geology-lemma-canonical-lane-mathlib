import EarthScienceEngineeringGeologyLemmaCanonicalLaneLean.RockMassStrengthPackage

/-!
# Shear Strength Parameters Package
-/

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure ShearStrengthParametersPackage
    {R : RockMassStrengthPackage} where
  cohesion : Prop
  frictionAngle : Prop
  dilationAngle : Prop
  failureCriterion : Prop

structure ShearStrengthParametersEvidence
    {R : RockMassStrengthPackage}
    (S : ShearStrengthParametersPackage R) where
  cohesionClosed : S.cohesion
  frictionAngleClosed : S.frictionAngle
  dilationAngleClosed : S.dilationAngle
  failureCriterionClosed : S.failureCriterion

def ShearStrengthParametersClosed
    {R : RockMassStrengthPackage}
    (S : ShearStrengthParametersPackage R) : Prop :=
  S.cohesion ∧ S.frictionAngle ∧ S.dilationAngle ∧ S.failureCriterion

theorem shear_strength_parameters_closed_from_evidence
    {R : RockMassStrengthPackage}
    (S : ShearStrengthParametersPackage R)
    (E : ShearStrengthParametersEvidence S) :
    ShearStrengthParametersClosed S := by
  exact And.intro E.cohesionClosed
    (And.intro E.frictionAngleClosed
      (And.intro E.dilationAngleClosed E.failureCriterionClosed))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse