import GeologicalProblemsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

def gateClosed (A : GeologicalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GeologicalAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse