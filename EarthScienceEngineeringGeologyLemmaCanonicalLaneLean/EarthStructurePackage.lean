import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure EarthStructurePackage where
  rockMass : Type u
  stressState : Type v
  strainTensor : Type w
  failureCriterion : Prop
  deformationHistory : Prop
  fractureNetwork : Prop
  beddingPlanes : Prop

structure EarthStructureEvidence (E : EarthStructurePackage) where
  failureCriterionClosed : E.failureCriterion
  deformationHistoryClosed : E.deformationHistory
  fractureNetworkClosed : E.fractureNetwork
  beddingPlanesClosed : E.beddingPlanes

def EarthStructureClosed (E : EarthStructurePackage) : Prop :=
  E.failureCriterion ∧ E.deformationHistory ∧ E.fractureNetwork ∧ E.beddingPlanes

theorem earth_structure_closed_from_evidence (E : EarthStructurePackage) (Ev : EarthStructureEvidence E) : EarthStructureClosed E := by
  exact And.intro Ev.failureCriterionClosed (And.intro Ev.deformationHistoryClosed (And.intro Ev.fractureNetworkClosed Ev.beddingPlanesClosed))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse