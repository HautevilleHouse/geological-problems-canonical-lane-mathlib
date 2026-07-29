import GeologicalProblemsCanonicalLaneLean.FaultMechanics

/-!
# Permeability Package
-/

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure PermeabilityPackage (F : FaultMechanicsPackage (RheologyPackage.default)) where
  porosityModel : Prop
  permeabilityTensor : Prop
  darcyFlow : Prop
  fracturingEffect : Prop

structure PermeabilityEvidence (F : FaultMechanicsPackage (RheologyPackage.default)) (P : PermeabilityPackage F) where
  porosityModelClosed : P.porosityModel
  permeabilityTensorClosed : P.permeabilityTensor
  darcyFlowClosed : P.darcyFlow
  fracturingEffectClosed : P.fracturingEffect

def PermeabilityClosed (F : FaultMechanicsPackage (RheologyPackage.default)) (P : PermeabilityPackage F) : Prop :=
  P.porosityModel ∧ P.permeabilityTensor ∧ P.darcyFlow ∧ P.fracturingEffect

theorem permeability_closed_from_evidence (F : FaultMechanicsPackage (RheologyPackage.default)) (P : PermeabilityPackage F) (E : PermeabilityEvidence F P) :
    PermeabilityClosed F P := by
  exact And.intro E.porosityModelClosed (And.intro E.permeabilityTensorClosed (And.intro E.darcyFlowClosed E.fracturingEffectClosed))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse