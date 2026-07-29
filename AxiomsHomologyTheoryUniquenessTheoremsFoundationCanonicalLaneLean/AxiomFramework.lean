import AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure AxiomPackage where
  chainComplexAxiom : Prop
  homologyFunctorAxiom : Prop
  exactnessAxiom : Prop
  dimensionAxiom : Prop
  additivityAxiom : Prop
  allAxiomsHold : Prop
  allAxiomsHoldTerm : allAxiomsHold

structure AxiomEvidence (G : AxiomPackage) where
  chainComplexAxiomClosed : G.chainComplexAxiom
  homologyFunctorAxiomClosed : G.homologyFunctorAxiom
  exactnessAxiomClosed : G.exactnessAxiom
  dimensionAxiomClosed : G.dimensionAxiom
  additivityAxiomClosed : G.additivityAxiom

def AxiomPackageClosed (G : AxiomPackage) : Prop :=
  G.chainComplexAxiom ∧ G.homologyFunctorAxiom ∧ G.exactnessAxiom ∧ G.dimensionAxiom ∧ G.additivityAxiom ∧ G.allAxiomsHold

theorem axiom_package_closed_from_evidence
    (G : AxiomPackage) (E : AxiomEvidence G) : AxiomPackageClosed G := by
  exact And.intro E.chainComplexAxiomClosed
    (And.intro E.homologyFunctorAxiomClosed
      (And.intro E.exactnessAxiomClosed
        (And.intro E.dimensionAxiomClosed
          (And.intro E.additivityAxiomClosed G.allAxiomsHoldTerm))))

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse