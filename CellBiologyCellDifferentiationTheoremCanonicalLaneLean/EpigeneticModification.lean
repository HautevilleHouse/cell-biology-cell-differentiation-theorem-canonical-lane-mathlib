import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure EpigeneticModification where
  histoneModification : Type
  dnaMethylation : Type
  chromatinRemodeling : Type
  epigeneticMemory : Prop
  modificationHeritable : Prop
  epigeneticMemoryTerm : epigeneticMemory
  modificationHeritableTerm : modificationHeritable

structure EpigeneticModificationEvidence (E : EpigeneticModification) where
  epigeneticMemoryClosed : E.epigeneticMemory
  modificationHeritableClosed : E.modificationHeritable

def EpigeneticModificationClosed (E : EpigeneticModification) : Prop :=
  E.epigeneticMemory ∧ E.modificationHeritable

theorem epigenetic_modification_closed_from_evidence
    (E : EpigeneticModification) (Ev : EpigeneticModificationEvidence E) :
    EpigeneticModificationClosed E := by
  exact And.intro Ev.epigeneticMemoryClosed Ev.modificationHeritableClosed

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse