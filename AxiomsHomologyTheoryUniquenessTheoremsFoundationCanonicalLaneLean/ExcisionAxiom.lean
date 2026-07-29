import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure ExcisionAxiomPackage where
  excisionIsomorphism : Prop
  relativeInclusion : Prop

def ExcisionAxiomClosed (P : ExcisionAxiomPackage) : Prop :=
  P.excisionIsomorphism ∧ P.relativeInclusion

structure ExcisionAxiomEvidence (P : ExcisionAxiomPackage) where
  excisionIsomorphismClosed : P.excisionIsomorphism
  relativeInclusionClosed : P.relativeInclusion

theorem excision_axiom_closed_from_evidence (P : ExcisionAxiomPackage) (E : ExcisionAxiomEvidence P) : ExcisionAxiomClosed P :=
  And.intro E.excisionIsomorphismClosed E.relativeInclusionClosed

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse