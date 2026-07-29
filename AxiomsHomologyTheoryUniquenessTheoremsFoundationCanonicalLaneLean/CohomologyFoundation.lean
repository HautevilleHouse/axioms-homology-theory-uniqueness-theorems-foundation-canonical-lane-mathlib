import AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean.HomologyUniqueness

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure CohomologyFoundationPackage {G : AxiomPackage}
    {H : HomologyUniquenessPackage G} where
  cohomologyGroups : Prop
  cupProduct : Type u
  poincareDuality : Prop
  universalCoefficientTheorem : Prop
  cohomologyGroupsTerm : cohomologyGroups
  poincareDualityTerm : poincareDuality
  universalCoefficientTheoremTerm : universalCoefficientTheorem

structure CohomologyFoundationEvidence {G : AxiomPackage}
    {H : HomologyUniquenessPackage G}
    (C : CohomologyFoundationPackage G H) where
  cohomologyGroupsClosed : C.cohomologyGroups
  poincareDualityClosed : C.poincareDuality
  universalCoefficientTheoremClosed : C.universalCoefficientTheorem

def CohomologyFoundationClosed {G : AxiomPackage}
    {H : HomologyUniquenessPackage G}
    (C : CohomologyFoundationPackage G H) : Prop :=
  C.cohomologyGroups ∧ C.poincareDuality ∧ C.universalCoefficientTheorem

theorem cohomology_foundation_closed_from_evidence
    {G : AxiomPackage} {H : HomologyUniquenessPackage G}
    (C : CohomologyFoundationPackage G H)
    (E : CohomologyFoundationEvidence C) : CohomologyFoundationClosed C := by
  exact And.intro E.cohomologyGroupsClosed
    (And.intro E.poincareDualityClosed E.universalCoefficientTheoremClosed)

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse