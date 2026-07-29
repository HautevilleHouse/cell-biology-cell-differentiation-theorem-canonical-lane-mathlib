import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure EpigeneticLandscapePackage (A : AdmissibleClass) where
  waddingtonPotential : Type u
  valleyBifurcation : Prop
  cellFateDecisions : Prop
  plasticity : Prop

structure EpigeneticLandscapeEvidence (A : AdmissibleClass) (E : EpigeneticLandscapePackage A) where
  valleyBifurcationClosed : E.valleyBifurcation
  cellFateDecisionsClosed : E.cellFateDecisions
  plasticityClosed : E.plasticity

def EpigeneticLandscapeClosed (A : AdmissibleClass) (E : EpigeneticLandscapePackage A) : Prop :=
  E.valleyBifurcation ∧ E.cellFateDecisions ∧ E.plasticity

theorem epigenetic_landscape_closed_from_evidence (A : AdmissibleClass) (E : EpigeneticLandscapePackage A) (Ev : EpigeneticLandscapeEvidence A E) :
    EpigeneticLandscapeClosed A E := by
  exact And.intro Ev.valleyBifurcationClosed (And.intro Ev.cellFateDecisionsClosed Ev.plasticityClosed)

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
