import GeologicalProblemsCanonicalLaneLean.AdmissibleClass

/-!
# Rheology Package
-/

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure RheologyPackage where
  viscosityModel : Prop
  strainRate : Prop
  stressStrainRelation : Prop
  yieldingCriterion : Prop

default instance : RheologyPackage := {
  viscosityModel := True,
  strainRate := True,
  stressStrainRelation := True,
  yieldingCriterion := True
}

structure RheologyEvidence (R : RheologyPackage) where
  viscosityModelClosed : R.viscosityModel
  strainRateClosed : R.strainRate
  stressStrainRelationClosed : R.stressStrainRelation
  yieldingCriterionClosed : R.yieldingCriterion

def RheologyClosed (R : RheologyPackage) : Prop :=
  R.viscosityModel ∧ R.strainRate ∧ R.stressStrainRelation ∧ R.yieldingCriterion

theorem rheology_closed_from_evidence (R : RheologyPackage) (E : RheologyEvidence R) :
    RheologyClosed R := by
  exact And.intro E.viscosityModelClosed (And.intro E.strainRateClosed (And.intro E.stressStrainRelationClosed E.yieldingCriterionClosed))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse