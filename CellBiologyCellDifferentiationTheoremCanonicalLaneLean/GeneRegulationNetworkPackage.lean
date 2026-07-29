import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure GeneRegulationNetworkPackage where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryInteractions : Prop
  differentiationMarkerExpression : Prop
  chromatinState : Prop

structure GeneRegulationNetworkEvidence (G : GeneRegulationNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  differentiationMarkerExpressionClosed : G.differentiationMarkerExpression
  chromatinStateClosed : G.chromatinState

def GeneRegulationNetworkClosed (G : GeneRegulationNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.differentiationMarkerExpression ∧ G.chromatinState

theorem gene_regulation_network_closed_from_evidence
    (G : GeneRegulationNetworkPackage) (E : GeneRegulationNetworkEvidence G) :
    GeneRegulationNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.differentiationMarkerExpressionClosed E.chromatinStateClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse