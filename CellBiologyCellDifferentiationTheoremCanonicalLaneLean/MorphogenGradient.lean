import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure MorphogenGradient where
  morphogen : Type
  concentrationGradient : Type
  positionalInformation : Type
  gradientFormed : Prop
  gradientInterpreted : Prop
  gradientFormedTerm : gradientFormed
  gradientInterpretedTerm : gradientInterpreted

structure MorphogenGradientEvidence (M : MorphogenGradient) where
  gradientFormedClosed : M.gradientFormed
  gradientInterpretedClosed : M.gradientInterpreted

def MorphogenGradientClosed (M : MorphogenGradient) : Prop :=
  M.gradientFormed ∧ M.gradientInterpreted

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradient) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.gradientFormedClosed E.gradientInterpretedClosed

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse