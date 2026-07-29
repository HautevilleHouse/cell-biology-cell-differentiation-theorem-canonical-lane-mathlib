import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellAdhesionPackage where
  adhesionMolecules : Type
  signalingPathways : Type
  cellCellContact : Prop
  receptorLigandBinding : Prop
  mechanicalCoupling : Prop

structure CellAdhesionEvidence (C : CellAdhesionPackage) where
  cellCellContactClosed : C.cellCellContact
  receptorLigandBindingClosed : C.receptorLigandBinding
  mechanicalCouplingClosed : C.mechanicalCoupling

def CellAdhesionClosed (C : CellAdhesionPackage) : Prop :=
  C.cellCellContact ∧ C.receptorLigandBinding ∧ C.mechanicalCoupling

theorem cell_adhesion_closed_from_evidence (C : CellAdhesionPackage) (E : CellAdhesionEvidence C) :
    CellAdhesionClosed C := by
  exact And.intro E.cellCellContactClosed (And.intro E.receptorLigandBindingClosed E.mechanicalCouplingClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse