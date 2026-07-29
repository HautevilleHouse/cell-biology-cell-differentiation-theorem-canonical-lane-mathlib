import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellDifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellDifferentiationAdmittedObject where
  space : CellDifferentiationSpace
  cellTypeIdentity : Prop
  differentiationPath : Prop
  regulatoryNetwork : Prop
  conclusion : differentiationPath

structure CellDifferentiationEndgameState where
  object : CellDifferentiationAdmittedObject

def CellDifferentiationWitnessClosed (O : CellDifferentiationAdmittedObject) : Prop :=
  O.differentiationPath

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
