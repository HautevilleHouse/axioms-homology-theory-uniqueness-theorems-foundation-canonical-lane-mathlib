import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleHomologyClass) : Prop :=
  HomologyTheoryAxiomsClosed A.object.axioms

theorem bridge_from_admissible_class (A : AdmissibleHomologyClass) :
    bridgeClosed A := by
  exact A.object.axiomsClosed

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse