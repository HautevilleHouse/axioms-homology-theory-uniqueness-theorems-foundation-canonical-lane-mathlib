import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyTheoryObject where
  spaceCategory : Type u
  homologyFunctor : Type v
  satisfiesEilenbergSteenrod : Prop
  uniquenessConclusion : Prop

structure HomologyEndgameState where
  object : HomologyTheoryObject

def HomologyWitnessClosed (O : HomologyTheoryObject) : Prop :=
  O.uniquenessConclusion

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse