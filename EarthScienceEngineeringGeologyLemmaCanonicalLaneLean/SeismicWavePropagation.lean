import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure SeismicWaveField where
  elasticModulus : Prop
  densityField : Prop
  waveEquation : Prop
  pWaveVelocity : Prop
  sWaveVelocity : Prop
  modulusKnown : elasticModulus
  densityKnown : densityField
  waveEquationDerived : waveEquation
  pVelocityComputed : pWaveVelocity
  sVelocityComputed : sWaveVelocity

structure SeismicWaveEvidence (S : SeismicWaveField) where
  modulusKnownClosed : S.modulusKnown
  densityKnownClosed : S.densityKnown
  waveEquationDerivedClosed : S.waveEquationDerived
  pVelocityComputedClosed : S.pVelocityComputed
  sVelocityComputedClosed : S.sVelocityComputed

def SeismicWaveClosed (S : SeismicWaveField) : Prop :=
  S.modulusKnown ∧ S.densityKnown ∧ S.waveEquationDerived ∧
  S.pVelocityComputed ∧ S.sVelocityComputed

theorem seismic_wave_closed_from_evidence (S : SeismicWaveField)
    (E : SeismicWaveEvidence S) : SeismicWaveClosed S := by
  exact And.intro E.modulusKnownClosed
    (And.intro E.densityKnownClosed
      (And.intro E.waveEquationDerivedClosed
        (And.intro E.pVelocityComputedClosed E.sVelocityComputedClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse