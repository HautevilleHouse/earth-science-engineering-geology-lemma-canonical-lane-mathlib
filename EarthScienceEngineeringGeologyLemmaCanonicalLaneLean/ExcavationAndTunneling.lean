import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceEngineeringGeologyLemmaCanonicalLaneLean

structure ExcavationAndTunnelingPackage where
  groundResponseCurve : Prop
  supportPressureEstimate : Prop
  standUpTime : Prop
  overbreakControl : Prop
  settlementTroughShape : Prop

structure ExcavationAndTunnelingEvidence (E : ExcavationAndTunnelingPackage) where
  groundResponseCurveClosed : E.groundResponseCurve
  supportPressureEstimateClosed : E.supportPressureEstimate
  standUpTimeClosed : E.standUpTime
  overbreakControlClosed : E.overbreakControl
  settlementTroughShapeClosed : E.settlementTroughShape

def ExcavationAndTunnelingClosed (E : ExcavationAndTunnelingPackage) : Prop :=
  E.groundResponseCurve ∧ E.supportPressureEstimate ∧ E.standUpTime ∧
  E.overbreakControl ∧ E.settlementTroughShape

theorem excavation_and_tunneling_closed_from_evidence (E : ExcavationAndTunnelingPackage)
    (Ev : ExcavationAndTunnelingEvidence E) : ExcavationAndTunnelingClosed E := by
  exact And.intro Ev.groundResponseCurveClosed
    (And.intro Ev.supportPressureEstimateClosed
      (And.intro Ev.standUpTimeClosed
        (And.intro Ev.overbreakControlClosed Ev.settlementTroughShapeClosed)))

end EarthScienceEngineeringGeologyLemmaCanonicalLaneLean
end HautevilleHouse
