import GeologicalProblemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure GeoSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeoAdmittedObject where
  space : GeoSpace
  includesPlateMotion : Prop
  includesFaultMechanics : Prop
  earthquakeModel : Type
  earthquakeTopology : TopologicalSpace earthquakeModel
  seismicActivity : Prop
  conclusion : seismicActivity

def GeoWitnessClosed (O : GeoAdmittedObject) : Prop :=
  O.seismicActivity

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse