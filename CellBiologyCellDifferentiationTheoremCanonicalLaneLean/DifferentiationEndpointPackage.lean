import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellDifferentiationTheoremCanonicalLaneLean.CellCyclePackage

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure DifferentiationEndpointPackage {G : GeneRegulationNetworkPackage}
    {C : CellCyclePackage G} where
  cellLineage : Type u
  terminalDifferentiationState : Prop
  lineagePotential : Prop
  plasticity : Prop

structure DifferentiationEndpointEvidence {G : GeneRegulationNetworkPackage}
    {C : CellCyclePackage G} (D : DifferentiationEndpointPackage) where
  terminalDifferentiationStateClosed : D.terminalDifferentiationState
  lineagePotentialClosed : D.lineagePotential
  plasticityClosed : D.plasticity

def DifferentiationEndpointClosed {G : GeneRegulationNetworkPackage}
    {C : CellCyclePackage G} (D : DifferentiationEndpointPackage) : Prop :=
  D.terminalDifferentiationState ∧ D.lineagePotential ∧ D.plasticity

theorem differentiation_endpoint_closed_from_evidence
    {G : GeneRegulationNetworkPackage} {C : CellCyclePackage G}
    (D : DifferentiationEndpointPackage) (E : DifferentiationEndpointEvidence D) :
    DifferentiationEndpointClosed D := by
  exact And.intro E.terminalDifferentiationStateClosed
    (And.intro E.lineagePotentialClosed E.plasticityClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse