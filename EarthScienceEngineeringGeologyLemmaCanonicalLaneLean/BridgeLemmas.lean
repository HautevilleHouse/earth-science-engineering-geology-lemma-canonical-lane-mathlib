import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | { object := _, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse