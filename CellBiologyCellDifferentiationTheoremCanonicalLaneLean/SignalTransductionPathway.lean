import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure SignalTransductionPathway (S : ExtracellularSignal) (R : ReceptorPackage) (I : IntracellularCascade) where
  ligandReceptorBinding : Prop
  kinaseCascade : Prop
  transcriptionFactorActivation : Prop
  crossTalkRegulation : Prop

structure SignalTransductionPathwayEvidence {S : ExtracellularSignal} {R : ReceptorPackage} {I : IntracellularCascade}
    (P : SignalTransductionPathway S R I) where
  ligandReceptorBindingClosed : P.ligandReceptorBinding
  kinaseCascadeClosed : P.kinaseCascade
  transcriptionFactorActivationClosed : P.transcriptionFactorActivation
  crossTalkRegulationClosed : P.crossTalkRegulation

def SignalTransductionPathwayClosed {S : ExtracellularSignal} {R : ReceptorPackage} {I : IntracellularCascade}
    (P : SignalTransductionPathway S R I) : Prop :=
  P.ligandReceptorBinding ∧ P.kinaseCascade ∧ P.transcriptionFactorActivation ∧ P.crossTalkRegulation

theorem signal_transduction_pathway_closed_from_evidence
    {S : ExtracellularSignal} {R : ReceptorPackage} {I : IntracellularCascade}
    (P : SignalTransductionPathway S R I) (Ev : SignalTransductionPathwayEvidence P) :
    SignalTransductionPathwayClosed P := by
  exact And.intro Ev.ligandReceptorBindingClosed
    (And.intro Ev.kinaseCascadeClosed
      (And.intro Ev.transcriptionFactorActivationClosed Ev.crossTalkRegulationClosed))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
