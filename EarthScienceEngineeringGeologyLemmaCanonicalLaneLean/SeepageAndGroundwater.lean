import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SeepageAndGroundwaterPackage where
  darcyFlowLaw : Prop
  permeabilityField : Prop
  seepageForce : Prop
  criticalHydraulicGradient : Prop
  pipingErosionCondition : Prop

structure SeepageAndGroundwaterEvidence (S : SeepageAndGroundwaterPackage) where
  darcyFlowLawClosed : S.darcyFlowLaw
  permeabilityFieldClosed : S.permeabilityField
  seepageForceClosed : S.seepageForce
  criticalHydraulicGradientClosed : S.criticalHydraulicGradient
  pipingErosionConditionClosed : S.pipingErosionCondition

def SeepageAndGroundwaterClosed (S : SeepageAndGroundwaterPackage) : Prop :=
  S.darcyFlowLaw ∧ S.permeabilityField ∧ S.seepageForce ∧
  S.criticalHydraulicGradient ∧ S.pipingErosionCondition

theorem seepage_and_groundwater_closed_from_evidence (S : SeepageAndGroundwaterPackage)
    (E : SeepageAndGroundwaterEvidence S) : SeepageAndGroundwaterClosed S := by
  exact And.intro E.darcyFlowLawClosed
    (And.intro E.permeabilityFieldClosed
      (And.intro E.seepageForceClosed
        (And.intro E.criticalHydraulicGradientClosed E.pipingErosionConditionClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
