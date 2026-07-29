import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure MantleConvectionPackage where
  viscosityField : Type u
  buoyancyForce : Type v
  stokesEquationSolved : Prop
  thermalCouplingClosed : Prop
  convectionCellPatternClosed : Prop
  surfaceMotionComputed : Prop

structure MantleConvectionEvidence (M : MantleConvectionPackage) where
  stokesEquationSolvedClosed : M.stokesEquationSolved
  thermalCouplingClosedTerm : M.thermalCouplingClosed
  convectionCellPatternClosedTerm : M.convectionCellPatternClosed
  surfaceMotionComputedClosed : M.surfaceMotionComputed

def MantleConvectionClosed (M : MantleConvectionPackage) : Prop :=
  M.stokesEquationSolved ∧ M.thermalCouplingClosed ∧
  M.convectionCellPatternClosed ∧ M.surfaceMotionComputed

theorem mantle_convection_closed_from_evidence (M : MantleConvectionPackage)
    (E : MantleConvectionEvidence M) : MantleConvectionClosed M := by
  exact And.intro E.stokesEquationSolvedClosed
    (And.intro E.thermalCouplingClosedTerm
      (And.intro E.convectionCellPatternClosedTerm E.surfaceMotionComputedClosed))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse