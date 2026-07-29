import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure StratigraphicPackage where
  boreholeLogsAvailable : Prop
  layerBoundaryDetected : Prop
  unitClassification : Prop
  unconformityIdentified : Prop
  correlationEstablished : Prop

def StratigraphicClosed (S : StratigraphicPackage) : Prop :=
  S.boreholeLogsAvailable ∧ S.layerBoundaryDetected ∧ S.unitClassification ∧
  S.unconformityIdentified ∧ S.correlationEstablished

theorem stratigraphic_closed_from_evidence (S : StratigraphicPackage)
    (h1 : S.boreholeLogsAvailable) (h2 : S.layerBoundaryDetected)
    (h3 : S.unitClassification) (h4 : S.unconformityIdentified)
    (h5 : S.correlationEstablished) : StratigraphicClosed S := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
