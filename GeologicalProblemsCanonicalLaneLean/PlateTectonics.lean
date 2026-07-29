import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure PlateTectonicsPackage where
  plateBoundaries : Type u
  relativeMotion : Type v
  kinematicModel : Prop
  deformationField : Prop
  seismicActivity : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  kinematicModelClosed : P.kinematicModel
  deformationFieldClosed : P.deformationField
  seismicActivityClosed : P.seismicActivity

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.kinematicModel ∧ P.deformationField ∧ P.seismicActivity

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage) (E : PlateTectonicsEvidence P) : PlateTectonicsClosed P := by
  exact And.intro E.kinematicModelClosed (And.intro E.deformationFieldClosed E.seismicActivityClosed)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse