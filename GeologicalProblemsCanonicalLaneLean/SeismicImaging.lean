import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure SeismicImagingPackage where
  sourceWavelet : Type u
  receiverArray : Type v
  migrationOperator : Type w
  velocityModelResolution : Prop
  imageStackingCondition : Prop
  migratedSectionClosed : Prop

structure SeismicImagingEvidence (S : SeismicImagingPackage) where
  velocityModelResolutionClosed : S.velocityModelResolution
  imageStackingConditionClosed : S.imageStackingCondition
  migratedSectionClosedTerm : S.migratedSectionClosed

def SeismicImagingClosed (S : SeismicImagingPackage) : Prop :=
  S.velocityModelResolution ∧
  S.imageStackingCondition ∧
  S.migratedSectionClosed

theorem seismic_imaging_closed_from_evidence (S : SeismicImagingPackage)
    (E : SeismicImagingEvidence S) : SeismicImagingClosed S := by
  exact And.intro E.velocityModelResolutionClosed
    (And.intro E.imageStackingConditionClosed E.migratedSectionClosedTerm)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse