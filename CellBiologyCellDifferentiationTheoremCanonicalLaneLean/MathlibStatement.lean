import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "cell-biology-cell-differentiation-canonical-lane",
  theoremObject := "ConstrainedCellDifferentiationClosure",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem mathlib_common_core_imported_checked :
    mathlibProofObligation.commonCoreImported = true := by
  rfl

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedCellDifferentiationClosure A) := by
  intro A
  exact constrained_cell_differentiation_endgame A

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse