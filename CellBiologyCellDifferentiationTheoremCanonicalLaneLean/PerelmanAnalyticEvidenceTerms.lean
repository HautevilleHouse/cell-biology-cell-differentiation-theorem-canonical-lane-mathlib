import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : CurvaturePackage}
    (C : CurvatureAnalyticCertificate G) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : CurvatureClosed G

def CurvatureAnalyticCertificate.evidenceTerms {G : CurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := curvature_closed_from_evidence G C.curvatureEvidence
  }

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse