import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure ExactnessAxiomPackage where
  longExactSequence : Prop
  naturality : Prop

def ExactnessAxiomClosed (P : ExactnessAxiomPackage) : Prop :=
  P.longExactSequence ∧ P.naturality

structure ExactnessAxiomEvidence (P : ExactnessAxiomPackage) where
  longExactSequenceClosed : P.longExactSequence
  naturalityClosed : P.naturality

theorem exactness_axiom_closed_from_evidence (P : ExactnessAxiomPackage) (E : ExactnessAxiomEvidence P) : ExactnessAxiomClosed P :=
  And.intro E.longExactSequenceClosed E.naturalityClosed

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse