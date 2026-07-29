import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CellDifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellDifferentiationAdmittedObject where
  space : CellDifferentiationSpace
  geneRegulatoryNetwork : Prop
  epigeneticState : Prop
  differentiationPotential : Prop
  terminalFate : Prop
  conclusion : terminalFate

structure CellDifferentiationEndgameState where
  object : CellDifferentiationAdmittedObject

def CellDifferentiationWitnessClosed (O : CellDifferentiationAdmittedObject) : Prop :=
  O.terminalFate

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
