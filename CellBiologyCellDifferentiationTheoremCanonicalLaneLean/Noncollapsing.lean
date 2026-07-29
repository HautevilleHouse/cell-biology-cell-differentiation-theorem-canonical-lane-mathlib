import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure NoncollapsingPackage (S : CellDifferentiationState) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {S : CellDifferentiationState} (N : NoncollapsingPackage S) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {S : CellDifferentiationState} (N : NoncollapsingPackage S) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {S : CellDifferentiationState} (N : NoncollapsingPackage S) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse