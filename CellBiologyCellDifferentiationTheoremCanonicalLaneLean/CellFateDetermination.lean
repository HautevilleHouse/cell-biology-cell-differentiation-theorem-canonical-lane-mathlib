import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellFateDetermination where
  progenitorCell : Type
  lineageSpecification : Type
  commitmentSignal : Type
  fateDecision : Prop
  differentiationProgram : Prop
  fateDecisionTerm : fateDecision
  differentiationProgramTerm : differentiationProgram

structure CellFateDeterminationEvidence (C : CellFateDetermination) where
  fateDecisionClosed : C.fateDecision
  differentiationProgramClosed : C.differentiationProgram

def CellFateDeterminationClosed (C : CellFateDetermination) : Prop :=
  C.fateDecision ∧ C.differentiationProgram

theorem cell_fate_determination_closed_from_evidence
    (C : CellFateDetermination) (E : CellFateDeterminationEvidence C) :
    CellFateDeterminationClosed C := by
  exact And.intro E.fateDecisionClosed E.differentiationProgramClosed

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse