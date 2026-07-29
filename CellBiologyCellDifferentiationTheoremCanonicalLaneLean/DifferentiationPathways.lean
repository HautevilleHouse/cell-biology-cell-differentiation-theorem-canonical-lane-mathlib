import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure DifferentiationPathway where
  cellType : Type
  transcriptionFactors : Type
  signalingPathways : Type
  stateTransitions : Prop
  geneRegulatoryNetwork : Prop
  finalDifferentiationState : Prop

structure CellStateEvidence (D : DifferentiationPathway) where
  stateTransitionsClosed : D.stateTransitions
  geneRegulatoryNetworkClosed : D.geneRegulatoryNetwork
  finalDifferentiationStateClosed : D.finalDifferentiationState

def CellWitnessClosed (O : CellAdmittedObject) : Prop :=
  O.pathwayConverged

def DifferentiationPathwayClosed (D : DifferentiationPathway) : Prop :=
  D.stateTransitions ∧ D.geneRegulatoryNetwork ∧ D.finalDifferentiationState

theorem differentiation_pathway_closed_from_evidence
    (D : DifferentiationPathway) (E : CellStateEvidence D) :
    DifferentiationPathwayClosed D := by
  exact And.intro E.stateTransitionsClosed
    (And.intro E.geneRegulatoryNetworkClosed E.finalDifferentiationStateClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse