import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SoilConstitutiveModel where
  stressStrainRelation : Prop
  yieldCriterion : Prop
  hardeningLaw : Prop
  dilationAngle : Prop
  porosityCoupling : Prop
  stressStrainDefined : stressStrainRelation
  yieldCriterionDefined : yieldCriterion
  hardeningLawDefined : hardeningLaw
  dilationAngleDefined : dilationAngle
  porosityCouplingKnown : porosityCoupling

structure SoilConstitutiveEvidence (S : SoilConstitutiveModel) where
  stressStrainDefinedClosed : S.stressStrainDefined
  yieldCriterionDefinedClosed : S.yieldCriterionDefined
  hardeningLawDefinedClosed : S.hardeningLawDefined
  dilationAngleDefinedClosed : S.dilationAngleDefined
  porosityCouplingKnownClosed : S.porosityCouplingKnown

def SoilConstitutiveClosed (S : SoilConstitutiveModel) : Prop :=
  S.stressStrainRelation ∧ S.yieldCriterion ∧ S.hardeningLaw ∧
  S.dilationAngle ∧ S.porosityCoupling

theorem soil_constitutive_closed_from_evidence (S : SoilConstitutiveModel)
    (E : SoilConstitutiveEvidence S) : SoilConstitutiveClosed S := by
  exact And.intro E.stressStrainDefinedClosed
    (And.intro E.yieldCriterionDefinedClosed
      (And.intro E.hardeningLawDefinedClosed
        (And.intro E.dilationAngleDefinedClosed E.porosityCouplingKnownClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse