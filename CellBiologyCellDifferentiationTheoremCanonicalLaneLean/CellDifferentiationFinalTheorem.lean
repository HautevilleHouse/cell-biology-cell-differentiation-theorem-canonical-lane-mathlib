import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

def ConstrainedCellDifferentiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_differentiation_endgame (A : AdmissibleClass) :
    ConstrainedCellDifferentiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
