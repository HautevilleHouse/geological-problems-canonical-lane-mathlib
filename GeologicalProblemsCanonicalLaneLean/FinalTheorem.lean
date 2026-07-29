import GeologicalProblemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

def ConstrainedGeologicalClosure (A : GeologicalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem geological_endgame (A : GeologicalAdmissibleClass) :
    ConstrainedGeologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse