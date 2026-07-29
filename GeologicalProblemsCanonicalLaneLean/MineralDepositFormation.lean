import GeologicalProblemsCanonicalLaneLean.PlateTectonicsModel

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure MineralDepositPackage where
  depositType : Type
  hostRockType : String
  formationTemperature : ℝ
  formationPressure : ℝ
  mineralComposition : List String
  depositModelClosed : Prop

structure MineralDepositEvidence (M : MineralDepositPackage) where
  formationConditionsPositive : M.formationTemperature > 0 ∧ M.formationPressure > 0
  hostRockValid : M.hostRockType ≠ ""
  depositModelClosed : M.depositModelClosed

def MineralDepositClosed (M : MineralDepositPackage) : Prop :=
  (M.formationTemperature > 0 ∧ M.formationPressure > 0) ∧ M.hostRockType ≠ "" ∧ M.depositModelClosed

theorem mineral_deposit_closed_from_evidence (M : MineralDepositPackage)
    (E : MineralDepositEvidence M) : MineralDepositClosed M := by
  exact And.intro E.formationConditionsPositive
    (And.intro E.hostRockValid E.depositModelClosed)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse