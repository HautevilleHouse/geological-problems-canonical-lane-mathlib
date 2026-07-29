import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure SeismicWavePropagationPackage where
  medium : Type u
  waveEquation : Prop
  sourceMechanism : Prop
  travelTimeTomography : Prop
  attenuationModel : Prop

structure SeismicWavePropagationEvidence (P : SeismicWavePropagationPackage) where
  waveEquationClosed : P.waveEquation
  sourceMechanismClosed : P.sourceMechanism
  travelTimeTomographyClosed : P.travelTimeTomography
  attenuationModelClosed : P.attenuationModel

def SeismicWavePropagationClosed (P : SeismicWavePropagationPackage) : Prop :=
  P.waveEquation ∧ P.sourceMechanism ∧ P.travelTimeTomography ∧ P.attenuationModel

theorem seismic_wave_propagation_closed_from_evidence (P : SeismicWavePropagationPackage) (E : SeismicWavePropagationEvidence P) : SeismicWavePropagationClosed P := by
  exact And.intro E.waveEquationClosed (And.intro E.sourceMechanismClosed (And.intro E.travelTimeTomographyClosed E.attenuationModelClosed))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse