import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure EarthStratigraphyPackage where
  stratigraphyModel : Type u
  layerCount : Nat
  layerBoundaries : List (ℝ × ℝ)
  porosityProfile : ℝ → ℝ
  permeabilityProfile : ℝ → ℝ
  stratigraphyDefined : Prop
  layerBoundariesConsistent : Prop
  profilesContinuous : Prop

structure EarthStratigraphyEvidence (S : EarthStratigraphyPackage) where
  stratigraphyDefinedClosed : S.stratigraphyDefined
  layerBoundariesConsistentClosed : S.layerBoundariesConsistent
  profilesContinuousClosed : S.profilesContinuous

def EarthStratigraphyClosed (S : EarthStratigraphyPackage) : Prop :=
  S.stratigraphyDefined ∧ S.layerBoundariesConsistent ∧ S.profilesContinuous

theorem earth_stratigraphy_closed_from_evidence (S : EarthStratigraphyPackage)
    (E : EarthStratigraphyEvidence S) : EarthStratigraphyClosed S := by
  exact And.intro E.stratigraphyDefinedClosed
    (And.intro E.layerBoundariesConsistentClosed E.profilesContinuousClosed)

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse