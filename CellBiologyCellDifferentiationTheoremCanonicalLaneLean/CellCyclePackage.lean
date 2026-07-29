import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellDifferentiationTheoremCanonicalLaneLean.GeneRegulationNetworkPackage

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellCyclePackage (G : GeneRegulationNetworkPackage) where
  cellCyclePhases : Prop
  cyclinDependentKinases : Prop
  checkpoints : Prop
  transitionControl : Prop

structure CellCycleEvidence {G : GeneRegulationNetworkPackage} (C : CellCyclePackage G) where
  cellCyclePhasesClosed : C.cellCyclePhases
  cyclinDependentKinasesClosed : C.cyclinDependentKinases
  checkpointsClosed : C.checkpoints
  transitionControlClosed : C.transitionControl

def CellCycleClosed {G : GeneRegulationNetworkPackage} (C : CellCyclePackage G) : Prop :=
  C.cellCyclePhases ∧ C.cyclinDependentKinases ∧ C.checkpoints ∧ C.transitionControl

theorem cell_cycle_closed_from_evidence
    {G : GeneRegulationNetworkPackage} (C : CellCyclePackage G) (E : CellCycleEvidence C) :
    CellCycleClosed C := by
  exact And.intro E.cellCyclePhasesClosed
    (And.intro E.cyclinDependentKinasesClosed
      (And.intro E.checkpointsClosed E.transitionControlClosed))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse