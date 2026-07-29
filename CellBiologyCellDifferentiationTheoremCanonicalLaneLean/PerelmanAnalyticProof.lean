import HautevilleHouse.CellBiologyCellDifferentiationTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationTheoremCanonicalLaneLean

structure CurvaturePackage where
  manifold : Type u
  metric : Type v
  riemannTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  smoothThreeManifold : Prop
  metricSmooth : Prop
  riemannTensorLawful : Prop
  ricciTensorContractedFromRiemann : Prop
  scalarCurvatureTraceOfRicci : Prop

structure CurvatureEvidence (G : CurvaturePackage) where
  smoothThreeManifoldClosed : G.smoothThreeManifold
  metricSmoothClosed : G.metricSmooth
  riemannTensorLawfulClosed : G.riemannTensorLawful
  ricciTensorContractedFromRiemannClosed : G.ricciTensorContractedFromRiemann
  scalarCurvatureTraceOfRicciClosed : G.scalarCurvatureTraceOfRicci

def CurvatureClosed (G : CurvaturePackage) : Prop :=
  G.smoothThreeManifold ∧ G.metricSmooth ∧ G.riemannTensorLawful ∧ G.ricciTensorContractedFromRiemann ∧ G.scalarCurvatureTraceOfRicci

theorem curvature_closed_from_evidence
    (G : CurvaturePackage) (E : CurvatureEvidence G) : CurvatureClosed G := by
  exact And.intro E.smoothThreeManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.riemannTensorLawfulClosed
        (And.intro E.ricciTensorContractedFromRiemannClosed E.scalarCurvatureTraceOfRicciClosed)))

structure CurvatureAnalyticCertificate (G : CurvaturePackage) where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs
  curvatureEvidence : CurvatureEvidence G

def CurvatureAnalyticCertificateClosed {G : CurvaturePackage}
    (C : CurvatureAnalyticCertificate G) : Prop :=
  C.riemannTensorSymmetries ∧ C.bianchiIdentities ∧ C.ricciContractionLaw ∧ C.scalarTraceLaw ∧ C.curvatureEvolutionInputs ∧ CurvatureClosed G

theorem curvature_analytic_certificate_closed
    {G : CurvaturePackage} (C : CurvatureAnalyticCertificate G) :
    CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.riemannTensorSymmetriesClosed
    (And.intro C.bianchiIdentitiesClosed
      (And.intro C.ricciContractionLawClosed
        (And.intro C.scalarTraceLawClosed
          (And.intro C.curvatureEvolutionInputsClosed
            (curvature_closed_from_evidence G C.curvatureEvidence)))))

end CellBiologyCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse