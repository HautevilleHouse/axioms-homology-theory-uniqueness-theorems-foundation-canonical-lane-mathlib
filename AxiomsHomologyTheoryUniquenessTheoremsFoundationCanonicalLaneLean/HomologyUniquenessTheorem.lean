import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyUniquenessTheorem (H H' : HomologyTheoryAxioms) where
  isomorphismExists : Prop
  naturalWithRespectToMaps : Prop
  isomorphismUnique : Prop

structure HomologyUniquenessEvidence {H H' : HomologyTheoryAxioms} (T : HomologyUniquenessTheorem H H') where
  isomorphismExistsClosed : T.isomorphismExists
  naturalWithRespectToMapsClosed : T.naturalWithRespectToMaps
  isomorphismUniqueClosed : T.isomorphismUnique

def HomologyUniquenessClosed {H H' : HomologyTheoryAxioms} (T : HomologyUniquenessTheorem H H') : Prop :=
  T.isomorphismExists ∧ T.naturalWithRespectToMaps ∧ T.isomorphismUnique

theorem homology_uniqueness_closed_from_evidence {H H' : HomologyTheoryAxioms}
    (T : HomologyUniquenessTheorem H H') (E : HomologyUniquenessEvidence T) :
    HomologyUniquenessClosed T := by
  exact And.intro E.isomorphismExistsClosed
    (And.intro E.naturalWithRespectToMapsClosed E.isomorphismUniqueClosed)

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse