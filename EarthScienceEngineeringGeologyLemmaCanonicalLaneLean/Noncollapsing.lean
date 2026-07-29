import EarthScienceEngineeringGeologyLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Noncollapsing Package
-/

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure RockMassStrengthPackage where
  intactRockStrength : Prop
  jointConditionFactor : Prop
  scaleEffectParameter : Prop

structure RockMassStrengthEvidence (R : RockMassStrengthPackage) where
  intactRockStrengthClosed : R.intactRockStrength
  jointConditionFactorClosed : R.jointConditionFactor
  scaleEffectParameterClosed : R.scaleEffectParameter

def RockMassStrengthClosed (R : RockMassStrengthPackage) : Prop :=
  R.intactRockStrength ∧ R.jointConditionFactor ∧ R.scaleEffectParameter

theorem rock_mass_strength_closed_from_evidence (R : RockMassStrengthPackage)
    (E : RockMassStrengthEvidence R) : RockMassStrengthClosed R := by
  exact And.intro E.intactRockStrengthClosed
    (And.intro E.jointConditionFactorClosed E.scaleEffectParameterClosed)

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse