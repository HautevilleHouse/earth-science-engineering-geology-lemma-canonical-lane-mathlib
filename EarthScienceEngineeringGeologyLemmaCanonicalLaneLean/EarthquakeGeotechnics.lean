import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure EarthquakeGeotechnicsPackage where
  cyclicStressRatio : Prop
  cyclicResistanceRatio : Prop
  porePressureGeneration : Prop
  strengthDegradation : Prop
  siteAmplificationFactor : Prop

structure EarthquakeGeotechnicsEvidence (E : EarthquakeGeotechnicsPackage) where
  cyclicStressRatioClosed : E.cyclicStressRatio
  cyclicResistanceRatioClosed : E.cyclicResistanceRatio
  porePressureGenerationClosed : E.porePressureGeneration
  strengthDegradationClosed : E.strengthDegradation
  siteAmplificationFactorClosed : E.siteAmplificationFactor

def EarthquakeGeotechnicsClosed (E : EarthquakeGeotechnicsPackage) : Prop :=
  E.cyclicStressRatio ∧ E.cyclicResistanceRatio ∧ E.porePressureGeneration ∧
  E.strengthDegradation ∧ E.siteAmplificationFactor

theorem earthquake_geotechnics_closed_from_evidence (E : EarthquakeGeotechnicsPackage)
    (Ev : EarthquakeGeotechnicsEvidence E) : EarthquakeGeotechnicsClosed E := by
  exact And.intro Ev.cyclicStressRatioClosed
    (And.intro Ev.cyclicResistanceRatioClosed
      (And.intro Ev.porePressureGenerationClosed
        (And.intro Ev.strengthDegradationClosed Ev.siteAmplificationFactorClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
