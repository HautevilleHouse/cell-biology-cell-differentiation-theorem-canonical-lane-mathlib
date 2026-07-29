import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure StemCellPlasticity where
  stemCell : Type
  nicheMicroenvironment : Type
  dedifferentiation : Prop
  transdifferentiation : Prop
  plasticityMaintained : Prop
  dedifferentiationTerm : dedifferentiation
  transdifferentiationTerm : transdifferentiation
  plasticityMaintainedTerm : plasticityMaintained

structure StemCellPlasticityEvidence (S : StemCellPlasticity) where
  dedifferentiationClosed : S.dedifferentiation
  transdifferentiationClosed : S.transdifferentiation
  plasticityMaintainedClosed : S.plasticityMaintained

def StemCellPlasticityClosed (S : StemCellPlasticity) : Prop :=
  S.dedifferentiation ∧ S.transdifferentiation ∧ S.plasticityMaintained

theorem stem_cell_plasticity_closed_from_evidence
    (S : StemCellPlasticity) (E : StemCellPlasticityEvidence S) :
    StemCellPlasticityClosed S := by
  exact And.intro E.dedifferentiationClosed
    (And.intro E.transdifferentiationClosed E.plasticityMaintainedClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse