import GeologicalProblemsCanonicalLaneLean.Permeability

/-!
# Geothermal Reservoirs Package
-/

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure GeothermalReservoirPackage (P : PermeabilityPackage) where
  heatTransferModel : Prop
  fluidFlowCoupling : Prop
  energyExtractionEfficiency : Prop

structure GeothermalReservoirEvidence (P : PermeabilityPackage) (G : GeothermalReservoirPackage P) where
  heatTransferModelClosed : G.heatTransferModel
  fluidFlowCouplingClosed : G.fluidFlowCoupling
  energyExtractionEfficiencyClosed : G.energyExtractionEfficiency

def GeothermalReservoirClosed (P : PermeabilityPackage) (G : GeothermalReservoirPackage P) : Prop :=
  G.heatTransferModel ∧ G.fluidFlowCoupling ∧ G.energyExtractionEfficiency

theorem geothermal_reservoir_closed_from_evidence (P : PermeabilityPackage) (G : GeothermalReservoirPackage P) (E : GeothermalReservoirEvidence P G) :
    GeothermalReservoirClosed P G := by
  exact And.intro E.heatTransferModelClosed (And.intro E.fluidFlowCouplingClosed E.energyExtractionEfficiencyClosed)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse