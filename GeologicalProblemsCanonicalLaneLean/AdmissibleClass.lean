import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure GeologicalAdmittedObject where
  region : Type
  geologicalStructure : Prop
  strainModel : Prop
  deformationPath : Prop
  conclusion : deformationPath

structure GeologicalAdmissibleClass where
  object : GeologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GeologicalWitnessClosed (O : GeologicalAdmittedObject) : Prop :=
  O.deformationPath

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse