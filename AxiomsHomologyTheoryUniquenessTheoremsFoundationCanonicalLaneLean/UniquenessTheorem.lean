import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure UniquenessTheoremPackage (A : AdmissibleHomologyClass) where
  sourceTheory : HomologyTheoryObject
  targetTheory : HomologyTheoryObject
  axiomsAgreement : HomologyTheoryAxiomsClosed sourceTheory.axioms ∧ HomologyTheoryAxiomsClosed targetTheory.axioms
  isomorphismExists : Prop

structure UniquenessTheoremEvidence {A : AdmissibleHomologyClass}
    (P : UniquenessTheoremPackage A) where
  axiomsAgreementClosed : P.axiomsAgreement
  isomorphismExistsClosed : P.isomorphismExists

def UniquenessTheoremClosed {A : AdmissibleHomologyClass}
    (P : UniquenessTheoremPackage A) : Prop :=
  P.axiomsAgreement ∧ P.isomorphismExists

theorem uniqueness_theorem_closed_from_evidence {A : AdmissibleHomologyClass}
    (P : UniquenessTheoremPackage A) (E : UniquenessTheoremEvidence P) :
    UniquenessTheoremClosed P := by
  exact And.intro E.axiomsAgreementClosed E.isomorphismExistsClosed

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse