import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

def ConstrainedHomologyClosure (A : AdmissibleHomologyClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_homology_endgame (A : AdmissibleHomologyClass) :
    ConstrainedHomologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse