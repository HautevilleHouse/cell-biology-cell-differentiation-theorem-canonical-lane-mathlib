import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure EpigeneticRegulationPackage where
  dnaMethylationPattern : Prop
  histoneModificationCode : Prop
  chromatinRemodeling : Prop
  noncodingRnaRegulation : Prop
  epigeneticMemory : Prop
  dnaMethylationClosed : Prop
  histoneModificationClosed : Prop
  chromatinRemodelingClosed : Prop
  noncodingRnaClosed : Prop
  epigeneticMemoryClosed : Prop

structure EpigeneticRegulationEvidence (E : EpigeneticRegulationPackage) where
  dnaMethylationPatternClosed : E.dnaMethylationPattern
  histoneModificationCodeClosed : E.histoneModificationCode
  chromatinRemodelingClosed : E.chromatinRemodeling
  noncodingRnaRegulationClosed : E.noncodingRnaRegulation
  epigeneticMemoryClosed : E.epigeneticMemory

def EpigeneticRegulationClosed (E : EpigeneticRegulationPackage) : Prop :=
  E.dnaMethylationPattern ∧ E.histoneModificationCode ∧
  E.chromatinRemodeling ∧ E.noncodingRnaRegulation ∧
  E.epigeneticMemory

theorem epigenetic_regulation_closed_from_evidence
    (E : EpigeneticRegulationPackage) (Ev : EpigeneticRegulationEvidence E) :
    EpigeneticRegulationClosed E := by
  exact And.intro Ev.dnaMethylationPatternClosed
    (And.intro Ev.histoneModificationCodeClosed
      (And.intro Ev.chromatinRemodelingClosed
        (And.intro Ev.noncodingRnaRegulationClosed
          Ev.epigeneticMemoryClosed)))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse