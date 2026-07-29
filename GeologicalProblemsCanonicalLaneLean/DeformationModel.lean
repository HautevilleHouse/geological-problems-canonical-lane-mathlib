import GeologicalProblemsCanonicalLaneLean.StrainAnalysis

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure DeformationModelPackage where
  displacementField : Prop
  deformationGradient : Prop
  compatibilityCondition : Prop
  materialResponse : Prop
  closureCondition : Prop

structure DeformationModelEvidence (D : DeformationModelPackage) where
  displacementFieldClosed : D.displacementField
  deformationGradientClosed : D.deformationGradient
  compatibilityConditionClosed : D.compatibilityCondition
  materialResponseClosed : D.materialResponse
  closureConditionClosed : D.closureCondition

def DeformationModelClosed (D : DeformationModelPackage) : Prop :=
  D.displacementField ∧ D.deformationGradient ∧ D.compatibilityCondition ∧
  D.materialResponse ∧ D.closureCondition

theorem deformation_model_closed_from_evidence (D : DeformationModelPackage)
    (E : DeformationModelEvidence D) : DeformationModelClosed D := by
  exact And.intro E.displacementFieldClosed
    (And.intro E.deformationGradientClosed
      (And.intro E.compatibilityConditionClosed
        (And.intro E.materialResponseClosed E.closureConditionClosed)))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse