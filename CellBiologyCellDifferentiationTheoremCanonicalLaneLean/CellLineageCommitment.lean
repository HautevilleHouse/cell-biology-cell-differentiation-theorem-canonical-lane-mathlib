import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellLineageCommitmentPackage where
  multipotentProgenitor : Prop
  lineageSpecification : Prop
  terminalDifferentiation : Prop
  cellFateDecision : Prop

structure CellLineageCommitmentEvidence (C : CellLineageCommitmentPackage) where
  multipotentProgenitorClosed : C.multipotentProgenitor
  lineageSpecificationClosed : C.lineageSpecification
  terminalDifferentiationClosed : C.terminalDifferentiation
  cellFateDecisionClosed : C.cellFateDecision

def CellLineageCommitmentClosed (C : CellLineageCommitmentPackage) : Prop :=
  C.multipotentProgenitor ∧ C.lineageSpecification ∧ C.terminalDifferentiation ∧ C.cellFateDecision

theorem cell_lineage_commitment_closed_from_evidence (C : CellLineageCommitmentPackage) (E : CellLineageCommitmentEvidence C) :
    CellLineageCommitmentClosed C := by
  exact And.intro E.multipotentProgenitorClosed
    (And.intro E.lineageSpecificationClosed
      (And.intro E.terminalDifferentiationClosed E.cellFateDecisionClosed))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse