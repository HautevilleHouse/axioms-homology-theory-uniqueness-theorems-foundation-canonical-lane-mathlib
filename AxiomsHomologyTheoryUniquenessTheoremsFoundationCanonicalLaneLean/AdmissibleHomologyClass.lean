import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyTheoryObject where
  axioms : HomologyTheoryAxioms
  axiomsClosed : HomologyTheoryAxiomsClosed axioms

structure AdmissibleHomologyClass where
  object : HomologyTheoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleHomologyClass) : Prop :=
  HomologyTheoryAxiomsClosed A.object.axioms ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse