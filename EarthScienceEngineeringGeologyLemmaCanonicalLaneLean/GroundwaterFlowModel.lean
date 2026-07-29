import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure GroundwaterFlowPackage where
  aquiferProperties : Prop
  hydraulicHeadField : Prop
  conductivityTensor : Prop
  darcyVelocityComputed : Prop
  contaminationTransportAssessed : Prop

def GroundwaterFlowClosed (G : GroundwaterFlowPackage) : Prop :=
  G.aquiferProperties ∧ G.hydraulicHeadField ∧ G.conductivityTensor ∧
  G.darcyVelocityComputed ∧ G.contaminationTransportAssessed

theorem groundwater_flow_closed_from_evidence (G : GroundwaterFlowPackage)
    (h1 : G.aquiferProperties) (h2 : G.hydraulicHeadField)
    (h3 : G.conductivityTensor) (h4 : G.darcyVelocityComputed)
    (h5 : G.contaminationTransportAssessed) : GroundwaterFlowClosed G := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
