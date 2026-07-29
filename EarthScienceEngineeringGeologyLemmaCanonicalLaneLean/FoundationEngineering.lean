import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure FoundationEngineeringPackage where
  bearingCapacityTheory : Prop
  settlementPrediction : Prop
  pileSkinFriction : Prop
  groupEffectFactor : Prop
  liquefactionSusceptibility : Prop

structure FoundationEngineeringEvidence (F : FoundationEngineeringPackage) where
  bearingCapacityTheoryClosed : F.bearingCapacityTheory
  settlementPredictionClosed : F.settlementPrediction
  pileSkinFrictionClosed : F.pileSkinFriction
  groupEffectFactorClosed : F.groupEffectFactor
  liquefactionSusceptibilityClosed : F.liquefactionSusceptibility

def FoundationEngineeringClosed (F : FoundationEngineeringPackage) : Prop :=
  F.bearingCapacityTheory ∧ F.settlementPrediction ∧ F.pileSkinFriction ∧
  F.groupEffectFactor ∧ F.liquefactionSusceptibility

theorem foundation_engineering_closed_from_evidence (F : FoundationEngineeringPackage)
    (E : FoundationEngineeringEvidence F) : FoundationEngineeringClosed F := by
  exact And.intro E.bearingCapacityTheoryClosed
    (And.intro E.settlementPredictionClosed
      (And.intro E.pileSkinFrictionClosed
        (And.intro E.groupEffectFactorClosed E.liquefactionSusceptibilityClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
