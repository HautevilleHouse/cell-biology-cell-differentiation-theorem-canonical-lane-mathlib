import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure RegulatoryNetworkPackage (A : AdmissibleClass) where
  geneRegulatoryGraph : Type u
  transcriptionFactors : Type v
  signalingPathways : Type w
  networkDynamics : Prop
  attractorStates : Prop
  differentiationTrajectory : Prop

structure RegulatoryNetworkEvidence (A : AdmissibleClass) (R : RegulatoryNetworkPackage A) where
  networkDynamicsClosed : R.networkDynamics
  attractorStatesClosed : R.attractorStates
  differentiationTrajectoryClosed : R.differentiationTrajectory

def RegulatoryNetworkClosed (A : AdmissibleClass) (R : RegulatoryNetworkPackage A) : Prop :=
  R.networkDynamics ∧ R.attractorStates ∧ R.differentiationTrajectory

theorem regulatory_network_closed_from_evidence (A : AdmissibleClass) (R : RegulatoryNetworkPackage A) (E : RegulatoryNetworkEvidence A R) :
    RegulatoryNetworkClosed A R := by
  exact And.intro E.networkDynamicsClosed (And.intro E.attractorStatesClosed E.differentiationTrajectoryClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
