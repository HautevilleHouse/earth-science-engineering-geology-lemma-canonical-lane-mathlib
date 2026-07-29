import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure FaultZoneStressField where
  faultPlaneOrientation : Prop
  shearStressMagnitude : Prop
  normalStressMagnitude : Prop
  porePressure : Prop
  frictionCoefficient : Prop
  orientationValid : faultPlaneOrientation
  shearStressComputed : shearStressMagnitude
  normalStressComputed : normalStressMagnitude
  porePressureKnown : porePressure
  frictionMeasured : frictionCoefficient

structure FaultZoneEvidence (F : FaultZoneStressField) where
  orientationValidClosed : F.orientationValid
  shearStressComputedClosed : F.shearStressComputed
  normalStressComputedClosed : F.normalStressComputed
  porePressureKnownClosed : F.porePressureKnown
  frictionMeasuredClosed : F.frictionMeasured

def FaultZoneStressClosed (F : FaultZoneStressField) : Prop :=
  F.orientationValid ∧ F.shearStressComputed ∧ F.normalStressComputed ∧
  F.porePressureKnown ∧ F.frictionMeasured

theorem fault_zone_stress_closed_from_evidence (F : FaultZoneStressField)
    (E : FaultZoneEvidence F) : FaultZoneStressClosed F := by
  exact And.intro E.orientationValidClosed
    (And.intro E.shearStressComputedClosed
      (And.intro E.normalStressComputedClosed
        (And.intro E.porePressureKnownClosed E.frictionMeasuredClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse