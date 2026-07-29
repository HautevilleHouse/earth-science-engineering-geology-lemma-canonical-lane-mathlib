import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure EarthScienceEngineeringGeologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EarthScienceEngineeringGeologyAdmittedObject where
  space : EarthScienceEngineeringGeologySpace
  lemmaHypotheses : Prop
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

def EarthScienceEngineeringGeologyWitnessClosed (O : EarthScienceEngineeringGeologyAdmittedObject) : Prop :=
  O.lemmaConclusion

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse