import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleHomologyClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleHomologyClass) :
    gateClosed A := by
  exact A.gateWitness

end AxiomsHomologyTheoryUniquenessTheoremsFoundationCanonicalLaneLean
end HautevilleHouse