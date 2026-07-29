import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.CellStatePackage
import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.SignalTransductionPackage
import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.GeneRegulatoryNetworkPackage
import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.DifferentiationEndpointPackage

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellLineageBridgePackage where
  sourceState : CellStatePackage
  signal : SignalTransductionPackage
  network : GeneRegulatoryNetworkPackage
  targetState : DifferentiationEndpointPackage
  lineageProgression : Prop
  signalNetworkIntegration : Prop
  transitionValid : Prop

structure CellLineageBridgeEvidence (B : CellLineageBridgePackage) where
  lineageProgressionClosed : B.lineageProgression
  signalNetworkIntegrationClosed : B.signalNetworkIntegration
  transitionValidClosed : B.transitionValid

def CellLineageBridgeClosed (B : CellLineageBridgePackage) : Prop :=
  B.lineageProgression ∧ B.signalNetworkIntegration ∧ B.transitionValid

theorem cell_lineage_bridge_closed_from_evidence (B : CellLineageBridgePackage) (E : CellLineageBridgeEvidence B) : CellLineageBridgeClosed B := by
  exact And.intro E.lineageProgressionClosed (And.intro E.signalNetworkIntegrationClosed E.transitionValidClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse