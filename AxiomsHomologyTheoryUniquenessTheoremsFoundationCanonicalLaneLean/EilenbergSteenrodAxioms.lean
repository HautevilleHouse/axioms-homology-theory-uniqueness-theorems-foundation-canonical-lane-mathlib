import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyTheoryAxioms where
  exactness : Prop
  dimension : Prop
  additivity : Prop
  homotopyInvariance : Prop
  excision : Prop

structure HomologyTheoryAxiomsEvidence (A : HomologyTheoryAxioms) where
  exactnessClosed : A.exactness
  dimensionClosed : A.dimension
  additivityClosed : A.additivity
  homotopyInvarianceClosed : A.homotopyInvariance
  excisionClosed : A.excision

def HomologyTheoryAxiomsClosed (A : HomologyTheoryAxioms) : Prop :=
  A.exactness ∧ A.dimension ∧ A.additivity ∧ A.homotopyInvariance ∧ A.excision

theorem homology_theory_axioms_closed_from_evidence (A : HomologyTheoryAxioms) (E : HomologyTheoryAxiomsEvidence A) :
    HomologyTheoryAxiomsClosed A := by
  exact And.intro E.exactnessClosed
    (And.intro E.dimensionClosed
      (And.intro E.additivityClosed
        (And.intro E.homotopyInvarianceClosed E.excisionClosed)))

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse