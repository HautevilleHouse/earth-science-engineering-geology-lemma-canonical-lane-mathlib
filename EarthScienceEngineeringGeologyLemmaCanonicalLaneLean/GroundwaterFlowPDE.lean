import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure GroundwaterFlowPackage where
  hydraulicConductivity : Prop
  specificStorage : Prop
  darcyVelocityField : Prop
  continuityEquation : Prop
  boundaryConditions : Prop
  conductivityKnown : hydraulicConductivity
  storageKnown : specificStorage
  velocityFieldDefined : darcyVelocityField
  continuitySatisfied : continuityEquation
  boundaryApplied : boundaryConditions

structure GroundwaterFlowEvidence (G : GroundwaterFlowPackage) where
  conductivityKnownClosed : G.conductivityKnown
  storageKnownClosed : G.storageKnown
  velocityFieldDefinedClosed : G.velocityFieldDefined
  continuitySatisfiedClosed : G.continuitySatisfied
  boundaryAppliedClosed : G.boundaryApplied

def GroundwaterFlowClosed (G : GroundwaterFlowPackage) : Prop :=
  G.conductivityKnown ∧ G.storageKnown ∧ G.velocityFieldDefined ∧
  G.continuitySatisfied ∧ G.boundaryApplied

theorem groundwater_flow_closed_from_evidence (G : GroundwaterFlowPackage)
    (E : GroundwaterFlowEvidence G) : GroundwaterFlowClosed G := by
  exact And.intro E.conductivityKnownClosed
    (And.intro E.storageKnownClosed
      (And.intro E.velocityFieldDefinedClosed
        (And.intro E.continuitySatisfiedClosed E.boundaryAppliedClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse