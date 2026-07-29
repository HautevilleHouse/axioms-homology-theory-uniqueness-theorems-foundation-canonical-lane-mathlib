import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyTheoryAxioms where
  homotopyInvariance : Prop
  exactness : Prop
  excision : Prop
  dimension : Prop

structure HomologyTheoryAxiomsEvidence (A : HomologyTheoryAxioms) where
  homotopyInvarianceClosed : A.homotopyInvariance
  exactnessClosed : A.exactness
  excisionClosed : A.excision
  dimensionClosed : A.dimension

def HomologyTheoryAxiomsClosed (A : HomologyTheoryAxioms) : Prop :=
  A.homotopyInvariance ∧ A.exactness ∧ A.excision ∧ A.dimension

theorem homology_theory_axioms_closed_from_evidence (A : HomologyTheoryAxioms)
    (E : HomologyTheoryAxiomsEvidence A) : HomologyTheoryAxiomsClosed A := by
  exact And.intro E.homotopyInvarianceClosed
    (And.intro E.exactnessClosed (And.intro E.excisionClosed E.dimensionClosed))

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse