import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean.ChainComplex

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

structure HomologyAxiomsPackage (C : ChainComplexPackage) where
  homotopyInvariance : Prop
  exactnessAxiom : Prop
  excisionAxiom : Prop
  dimensionAxiom : Prop
  additivityAxiom : Prop

structure HomologyAxiomsEvidence {C : ChainComplexPackage} (HA : HomologyAxiomsPackage C) where
  homotopyInvarianceClosed : HA.homotopyInvariance
  exactnessAxiomClosed : HA.exactnessAxiom
  excisionAxiomClosed : HA.excisionAxiom
  dimensionAxiomClosed : HA.dimensionAxiom
  additivityAxiomClosed : HA.additivityAxiom

def HomologyAxiomsClosed {C : ChainComplexPackage} (HA : HomologyAxiomsPackage C) : Prop :=
  HA.homotopyInvariance ∧ HA.exactnessAxiom ∧ HA.excisionAxiom ∧ HA.dimensionAxiom ∧ HA.additivityAxiom

theorem homology_axioms_closed_from_evidence {C : ChainComplexPackage} (HA : HomologyAxiomsPackage C) (E : HomologyAxiomsEvidence HA) : HomologyAxiomsClosed HA := by
  exact And.intro E.homotopyInvarianceClosed
    (And.intro E.exactnessAxiomClosed
      (And.intro E.excisionAxiomClosed
        (And.intro E.dimensionAxiomClosed E.additivityAxiomClosed)))

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse