import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellStatePackage where
  cellType : Type u
  markerExpression : cellType → Type v
  differentiationStatus : Prop
  progenitorPotential : Prop
  cellCyclePhase : Prop

structure CellStateEvidence (C : CellStatePackage) where
  markerExpressionClosed : C.markerExpression C.cellType
  differentiationStatusClosed : C.differentiationStatus
  progenitorPotentialClosed : C.progenitorPotential
  cellCyclePhaseClosed : C.cellCyclePhase

def CellStateClosed (C : CellStatePackage) : Prop :=
  C.markerExpression C.cellType ∧ C.differentiationStatus ∧ C.progenitorPotential ∧ C.cellCyclePhase

theorem cell_state_closed_from_evidence (C : CellStatePackage) (E : CellStateEvidence C) : CellStateClosed C := by
  exact And.intro E.markerExpressionClosed (And.intro E.differentiationStatusClosed (And.intro E.progenitorPotentialClosed E.cellCyclePhaseClosed))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse