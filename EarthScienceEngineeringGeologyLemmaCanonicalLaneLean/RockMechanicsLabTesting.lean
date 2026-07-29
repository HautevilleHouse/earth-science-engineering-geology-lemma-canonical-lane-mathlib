import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure RockMechanicsLabTesting where
  samplePreparation : Prop
  unconfinedCompression : Prop
  triaxialTest : Prop
  tensileStrength : Prop
  elasticModuli : Prop
  failureEnvelope : Prop

structure RockMechanicsLabEvidence (R : RockMechanicsLabTesting) where
  samplePreparationClosed : R.samplePreparation
  unconfinedCompressionClosed : R.unconfinedCompression
  triaxialTestClosed : R.triaxialTest
  tensileStrengthClosed : R.tensileStrength
  elasticModuliClosed : R.elasticModuli
  failureEnvelopeClosed : R.failureEnvelope

def RockMechanicsLabClosed (R : RockMechanicsLabTesting) : Prop :=
  R.samplePreparation ∧ R.unconfinedCompression ∧ R.triaxialTest ∧ R.tensileStrength ∧ R.elasticModuli ∧ R.failureEnvelope

theorem rock_mechanics_lab_closed_from_evidence (R : RockMechanicsLabTesting) (Ev : RockMechanicsLabEvidence R) : RockMechanicsLabClosed R := by
  exact And.intro Ev.samplePreparationClosed (And.intro Ev.unconfinedCompressionClosed (And.intro Ev.triaxialTestClosed (And.intro Ev.tensileStrengthClosed (And.intro Ev.elasticModuliClosed Ev.failureEnvelopeClosed))))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse