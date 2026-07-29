import GeologicalProblemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure StrainAnalysisPackage where
  stressField : Prop
  strainTensor : Prop
  constitutiveLaw : Prop
  yieldCondition : Prop
  failureCriterion : Prop

structure StrainAnalysisEvidence (S : StrainAnalysisPackage) where
  stressFieldClosed : S.stressField
  strainTensorClosed : S.strainTensor
  constitutiveLawClosed : S.constitutiveLaw
  yieldConditionClosed : S.yieldCondition
  failureCriterionClosed : S.failureCriterion

def StrainAnalysisClosed (S : StrainAnalysisPackage) : Prop :=
  S.stressField ∧ S.strainTensor ∧ S.constitutiveLaw ∧ S.yieldCondition ∧ S.failureCriterion

theorem strain_analysis_closed_from_evidence (S : StrainAnalysisPackage)
    (E : StrainAnalysisEvidence S) : StrainAnalysisClosed S := by
  exact And.intro E.stressFieldClosed
    (And.intro E.strainTensorClosed
      (And.intro E.constitutiveLawClosed
        (And.intro E.yieldConditionClosed E.failureCriterionClosed)))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse