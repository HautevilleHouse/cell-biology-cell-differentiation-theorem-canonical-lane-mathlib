import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure TranscriptionFactorNetworkPackage where
  masterRegulators : Prop
  feedbackLoops : Prop
  crossRegulation : Prop
  networkDynamics : Prop

structure TranscriptionFactorNetworkEvidence (T : TranscriptionFactorNetworkPackage) where
  masterRegulatorsClosed : T.masterRegulators
  feedbackLoopsClosed : T.feedbackLoops
  crossRegulationClosed : T.crossRegulation
  networkDynamicsClosed : T.networkDynamics

def TranscriptionFactorNetworkClosed (T : TranscriptionFactorNetworkPackage) : Prop :=
  T.masterRegulators ∧ T.feedbackLoops ∧ T.crossRegulation ∧ T.networkDynamics

theorem transcription_factor_network_closed_from_evidence (T : TranscriptionFactorNetworkPackage) (E : TranscriptionFactorNetworkEvidence T) :
    TranscriptionFactorNetworkClosed T := by
  exact And.intro E.masterRegulatorsClosed
    (And.intro E.feedbackLoopsClosed
      (And.intro E.crossRegulationClosed E.networkDynamicsClosed))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse