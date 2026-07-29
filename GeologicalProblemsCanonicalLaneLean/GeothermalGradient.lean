import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure GeothermalGradientPackage where
  temperatureField : Type u
  thermalConductivity : Type v
  heatSourceDistribution : Type w
  heatEquationSolved : Prop
  gradientProfileClosed : Prop
  surfaceHeatFlowComputed : Prop

structure GeothermalGradientEvidence (G : GeothermalGradientPackage) where
  heatEquationSolvedClosed : G.heatEquationSolved
  gradientProfileClosedTerm : G.gradientProfileClosed
  surfaceHeatFlowComputedClosed : G.surfaceHeatFlowComputed

def GeothermalGradientClosed (G : GeothermalGradientPackage) : Prop :=
  G.heatEquationSolved ∧ G.gradientProfileClosed ∧ G.surfaceHeatFlowComputed

theorem geothermal_gradient_closed_from_evidence (G : GeothermalGradientPackage)
    (E : GeothermalGradientEvidence G) : GeothermalGradientClosed G := by
  exact And.intro E.heatEquationSolvedClosed
    (And.intro E.gradientProfileClosedTerm E.surfaceHeatFlowComputedClosed)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse