import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure DimensionAxiomPackage where
  pointHomology : Prop
  trivialAboveZero : Prop

def DimensionAxiomClosed (P : DimensionAxiomPackage) : Prop :=
  P.pointHomology ∧ P.trivialAboveZero

structure DimensionAxiomEvidence (P : DimensionAxiomPackage) where
  pointHomologyClosed : P.pointHomology
  trivialAboveZeroClosed : P.trivialAboveZero

theorem dimension_axiom_closed_from_evidence (P : DimensionAxiomPackage) (E : DimensionAxiomEvidence P) : DimensionAxiomClosed P :=
  And.intro E.pointHomologyClosed E.trivialAboveZeroClosed

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse