import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure StemCellFateDecisionPackage where
  selfRenewalSignal : Prop
  asymmetricDivision : Prop
  lineageCommitment : Prop
  differentiationTrigger : Prop
  cellCycleExit : Prop
  selfRenewalClosed : Prop
  asymmetricDivisionClosed : Prop
  lineageCommitmentClosed : Prop
  differentiationTriggerClosed : Prop
  cellCycleExitClosed : Prop

structure StemCellFateDecisionEvidence (S : StemCellFateDecisionPackage) where
  selfRenewalSignalClosed : S.selfRenewalSignal
  asymmetricDivisionClosed : S.asymmetricDivision
  lineageCommitmentClosed : S.lineageCommitment
  differentiationTriggerClosed : S.differentiationTrigger
  cellCycleExitClosed : S.cellCycleExit

def StemCellFateDecisionClosed (S : StemCellFateDecisionPackage) : Prop :=
  S.selfRenewalSignal ∧ S.asymmetricDivision ∧
  S.lineageCommitment ∧ S.differentiationTrigger ∧
  S.cellCycleExit

theorem stem_cell_fate_decision_closed_from_evidence
    (S : StemCellFateDecisionPackage) (E : StemCellFateDecisionEvidence S) :
    StemCellFateDecisionClosed S := by
  exact And.intro E.selfRenewalSignalClosed
    (And.intro E.asymmetricDivisionClosed
      (And.intro E.lineageCommitmentClosed
        (And.intro E.differentiationTriggerClosed
          E.cellCycleExitClosed)))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse