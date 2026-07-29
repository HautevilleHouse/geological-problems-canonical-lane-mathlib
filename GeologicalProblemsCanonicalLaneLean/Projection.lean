import GeologicalProblemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

def geoProjection : Projection (AdmittedObject GeoAdmittedObject) := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geo_projection_idempotent (x : AdmittedObject GeoAdmittedObject) :
    geoProjection.toFun (geoProjection.toFun x) = geoProjection.toFun x := by
  exact geoProjection.idempotent x

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse