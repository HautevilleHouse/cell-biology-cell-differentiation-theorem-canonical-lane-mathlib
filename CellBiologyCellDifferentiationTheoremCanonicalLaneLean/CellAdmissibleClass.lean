import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellAdmittedObject where
  space : CellSpace
  cellType : Type
  differentiated : Prop
  progenitorState : Prop
  transcriptionFactorProfile : Prop
  conclusion : differentiated

structure CellDifferentiationEndgameState where
  object : CellAdmittedObject

def CellWitnessClosed (O : CellAdmittedObject) : Prop :=
  O.differentiated

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse