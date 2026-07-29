import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure RockMassStabilityPackage where
  jointNetworkGeometry : Prop
  groundwaterInfluence : Prop
  stressDistribution : Prop
  kinematicFreedom : Prop
  factorOfSafety : Prop

structure RockMassStabilityEvidence (R : RockMassStabilityPackage) where
  jointNetworkGeometryClosed : R.jointNetworkGeometry
  groundwaterInfluenceClosed : R.groundwaterInfluence
  stressDistributionClosed : R.stressDistribution
  kinematicFreedomClosed : R.kinematicFreedom
  factorOfSafetyClosed : R.factorOfSafety

def RockMassStabilityClosed (R : RockMassStabilityPackage) : Prop :=
  R.jointNetworkGeometry ∧ R.groundwaterInfluence ∧ R.stressDistribution ∧
  R.kinematicFreedom ∧ R.factorOfSafety

theorem rock_mass_stability_closed_from_evidence (R : RockMassStabilityPackage)
    (E : RockMassStabilityEvidence R) : RockMassStabilityClosed R := by
  exact And.intro E.jointNetworkGeometryClosed
    (And.intro E.groundwaterInfluenceClosed
      (And.intro E.stressDistributionClosed
        (And.intro E.kinematicFreedomClosed E.factorOfSafetyClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
