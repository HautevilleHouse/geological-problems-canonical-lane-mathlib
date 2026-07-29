import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure GlacialIsostasyPackage where
  iceLoadHistory : Type u
  viscoelasticEarth : Type v
  seaLevelEquation : Type w
  reboundRateClosed : Prop
  relativeSeaLevelClosed : Prop
  crustalDeformationComputed : Prop

structure GlacialIsostasyEvidence (G : GlacialIsostasyPackage) where
  reboundRateClosedTerm : G.reboundRateClosed
  relativeSeaLevelClosedTerm : G.relativeSeaLevelClosed
  crustalDeformationComputedClosed : G.crustalDeformationComputed

def GlacialIsostasyClosed (G : GlacialIsostasyPackage) : Prop :=
  G.reboundRateClosed ∧ G.relativeSeaLevelClosed ∧ G.crustalDeformationComputed

theorem glacial_isostasy_closed_from_evidence (G : GlacialIsostasyPackage)
    (E : GlacialIsostasyEvidence G) : GlacialIsostasyClosed G := by
  exact And.intro E.reboundRateClosedTerm
    (And.intro E.relativeSeaLevelClosedTerm E.crustalDeformationComputedClosed)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse