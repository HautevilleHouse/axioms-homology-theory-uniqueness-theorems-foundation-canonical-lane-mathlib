import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean.HomologyAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure ExactSequencePackage {C : ChainComplexPackage} (HA : HomologyAxiomsPackage C) where
  shortExactSequence : Type u
  connectingHomomorphism : Type v
  longExactSequenceProperty : Prop
  naturality : Prop

structure ExactSequenceEvidence {C : ChainComplexPackage} {HA : HomologyAxiomsPackage C} (ES : ExactSequencePackage HA) where
  longExactSequenceClosed : ES.longExactSequenceProperty
  naturalityClosed : ES.naturality

def ExactSequenceClosed {C : ChainComplexPackage} {HA : HomologyAxiomsPackage C} (ES : ExactSequencePackage HA) : Prop :=
  ES.longExactSequenceProperty ∧ ES.naturality

theorem exact_sequence_closed_from_evidence {C : ChainComplexPackage} {HA : HomologyAxiomsPackage C} (ES : ExactSequencePackage HA) (E : ExactSequenceEvidence ES) : ExactSequenceClosed ES := by
  exact And.intro E.longExactSequenceClosed E.naturalityClosed

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse