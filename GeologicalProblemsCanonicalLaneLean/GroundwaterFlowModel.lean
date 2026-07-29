import GeologicalProblemsCanonicalLaneLean.MineralDepositFormation

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure GroundwaterFlowPackage where
  aquiferType : Type
  hydraulicConductivity : ℝ
  porosity : ℝ
  rechargeRate : ℝ
  dischargeRate : ℝ
  flowModelClosed : Prop

structure GroundwaterFlowEvidence (G : GroundwaterFlowPackage) where
  hydraulicConductivityPositive : G.hydraulicConductivity > 0
  porosityBetweenZeroOne : 0 < G.porosity ∧ G.porosity < 1
  rechargeNonnegative : G.rechargeRate ≥ 0
  dischargeNonnegative : G.dischargeRate ≥ 0
  flowModelClosed : G.flowModelClosed

def GroundwaterFlowClosed (G : GroundwaterFlowPackage) : Prop :=
  G.hydraulicConductivity > 0 ∧ (0 < G.porosity ∧ G.porosity < 1) ∧
  G.rechargeRate ≥ 0 ∧ G.dischargeRate ≥ 0 ∧ G.flowModelClosed

theorem groundwater_flow_closed_from_evidence (G : GroundwaterFlowPackage)
    (E : GroundwaterFlowEvidence G) : GroundwaterFlowClosed G := by
  exact And.intro E.hydraulicConductivityPositive
    (And.intro E.porosityBetweenZeroOne
      (And.intro E.rechargeNonnegative
        (And.intro E.dischargeNonnegative E.flowModelClosed)))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse