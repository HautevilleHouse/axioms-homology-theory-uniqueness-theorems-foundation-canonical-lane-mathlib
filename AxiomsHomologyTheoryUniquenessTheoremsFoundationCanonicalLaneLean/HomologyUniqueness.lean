import AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean.AxiomFramework

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyUniquenessPackage {G : AxiomPackage} where
  uniquenessTheorem : Prop
  comparisonMap : Type u
  isomorphismProperty : Prop
  naturality : Prop
  uniquenessTheoremTerm : uniquenessTheorem
  comparisonMapExists : comparisonMap
  isomorphismPropertyTerm : isomorphismProperty
  naturalityTerm : naturality

structure HomologyUniquenessEvidence {G : AxiomPackage}
    (H : HomologyUniquenessPackage G) where
  uniquenessTheoremClosed : H.uniquenessTheorem
  isomorphismPropertyClosed : H.isomorphismProperty
  naturalityClosed : H.naturality

def HomologyUniquenessClosed {G : AxiomPackage}
    (H : HomologyUniquenessPackage G) : Prop :=
  H.uniquenessTheorem ∧ H.isomorphismProperty ∧ H.naturality

theorem homology_uniqueness_closed_from_evidence
    {G : AxiomPackage} (H : HomologyUniquenessPackage G)
    (E : HomologyUniquenessEvidence H) : HomologyUniquenessClosed H := by
  exact And.intro E.uniquenessTheoremClosed
    (And.intro E.isomorphismPropertyClosed E.naturalityClosed)

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse