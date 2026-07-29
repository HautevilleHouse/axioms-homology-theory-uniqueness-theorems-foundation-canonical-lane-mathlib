import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  chainComplex : Type v
  homologyTheory : Type w
  satisfiesAxioms : Prop
  uniquenessConclusion : Prop
  conclusion : uniquenessConclusion

structure AdmissibleClass where
  object : HomologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HomologyAxiomsClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse