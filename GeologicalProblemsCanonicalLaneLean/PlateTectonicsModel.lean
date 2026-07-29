import GeologicalProblemsCanonicalLaneLean.SeismicWavePropagation

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure PlateTectonicsPackage where
  plateCount : ℕ
  plateMotionType : Type
  subductionZones : Prop
  seafloorSpreading : Prop
  mantleConvection : Prop
  tectonicModelClosed : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  subductionZonesClosed : P.subductionZones
  seafloorSpreadingClosed : P.seafloorSpreading
  mantleConvectionClosed : P.mantleConvection
  tectonicModelClosed : P.tectonicModelClosed

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.subductionZones ∧ P.seafloorSpreading ∧ P.mantleConvection ∧ P.tectonicModelClosed

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage)
    (E : PlateTectonicsEvidence P) : PlateTectonicsClosed P := by
  exact And.intro E.subductionZonesClosed
    (And.intro E.seafloorSpreadingClosed
      (And.intro E.mantleConvectionClosed E.tectonicModelClosed))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse