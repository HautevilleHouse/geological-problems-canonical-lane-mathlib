import GeologicalProblemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

def bridgeClosed (A : GeologicalAdmissibleClass) : Prop :=
  GeologicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : GeologicalAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse