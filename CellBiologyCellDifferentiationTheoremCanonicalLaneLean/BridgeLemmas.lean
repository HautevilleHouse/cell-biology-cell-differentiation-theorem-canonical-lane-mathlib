import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellDifferentiationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
