import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure GeneRegulatoryNetwork where
  transcriptionFactor : Type
  targetGene : Type
  enhancerElement : Type
  regulatoryEdges : Prop
  networkDynamics : Prop
  regulatoryEdgesTerm : regulatoryEdges
  networkDynamicsTerm : networkDynamics

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetwork) where
  regulatoryEdgesClosed : G.regulatoryEdges
  networkDynamicsClosed : G.networkDynamics

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetwork) : Prop :=
  G.regulatoryEdges ∧ G.networkDynamics

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetwork) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryEdgesClosed E.networkDynamicsClosed

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse