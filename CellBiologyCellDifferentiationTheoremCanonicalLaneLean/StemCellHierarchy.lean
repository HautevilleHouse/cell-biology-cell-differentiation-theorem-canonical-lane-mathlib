import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure StemCellHierarchyPackage (A : AdmissibleClass) where
  potencyLevels : Type u
  differentiationMarkers : Type v
  lineageCommitment : Prop
  selfRenewal : Prop
  terminalDifferentiation : Prop

structure StemCellHierarchyEvidence (A : AdmissibleClass) (S : StemCellHierarchyPackage A) where
  lineageCommitmentClosed : S.lineageCommitment
  selfRenewalClosed : S.selfRenewal
  terminalDifferentiationClosed : S.terminalDifferentiation

def StemCellHierarchyClosed (A : AdmissibleClass) (S : StemCellHierarchyPackage A) : Prop :=
  S.lineageCommitment ∧ S.selfRenewal ∧ S.terminalDifferentiation

theorem stem_cell_hierarchy_closed_from_evidence (A : AdmissibleClass) (S : StemCellHierarchyPackage A) (E : StemCellHierarchyEvidence A S) :
    StemCellHierarchyClosed A S := by
  exact And.intro E.lineageCommitmentClosed (And.intro E.selfRenewalClosed E.terminalDifferentiationClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
