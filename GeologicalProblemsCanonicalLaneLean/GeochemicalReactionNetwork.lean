import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure GeochemicalReactionNetworkPackage where
  species : Type u
  reactionRates : Prop
  equilibriumConstants : Prop
  massActionKinetics : Prop
  transportCoupling : Prop

structure GeochemicalReactionNetworkEvidence (P : GeochemicalReactionNetworkPackage) where
  reactionRatesClosed : P.reactionRates
  equilibriumConstantsClosed : P.equilibriumConstants
  massActionKineticsClosed : P.massActionKinetics
  transportCouplingClosed : P.transportCoupling

def GeochemicalReactionNetworkClosed (P : GeochemicalReactionNetworkPackage) : Prop :=
  P.reactionRates ∧ P.equilibriumConstants ∧ P.massActionKinetics ∧ P.transportCoupling

theorem geochemical_reaction_network_closed_from_evidence (P : GeochemicalReactionNetworkPackage) (E : GeochemicalReactionNetworkEvidence P) : GeochemicalReactionNetworkClosed P := by
  exact And.intro E.reactionRatesClosed (And.intro E.equilibriumConstantsClosed (And.intro E.massActionKineticsClosed E.transportCouplingClosed))

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse