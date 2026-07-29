import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure ChainComplexPackage where
  objectType : Type u
  differential : objectType → objectType
  chainHomotopy : Type v
  exactnessCondition : Prop
  chainComplexAxioms : Prop

structure ChainComplexEvidence (C : ChainComplexPackage) where
  differentialClosed : C.chainComplexAxioms
  exactnessClosed : C.exactnessCondition

def ChainComplexClosed (C : ChainComplexPackage) : Prop :=
  C.chainComplexAxioms ∧ C.exactnessCondition

theorem chain_complex_closed_from_evidence (C : ChainComplexPackage) (E : ChainComplexEvidence C) : ChainComplexClosed C := by
  exact And.intro E.differentialClosed E.exactnessClosed

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse