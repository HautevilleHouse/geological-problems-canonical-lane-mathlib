import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure SedimentaryBasinPackage where
  subsidenceHistory : Type u
  sedimentSupply : Type v
  compactionModel : Type w
  accommodationSpaceClosed : Prop
  stratigraphicArchitectureClosed : Prop
  burialHistoryComputed : Prop

structure SedimentaryBasinEvidence (S : SedimentaryBasinPackage) where
  accommodationSpaceClosedTerm : S.accommodationSpaceClosed
  stratigraphicArchitectureClosedTerm : S.stratigraphicArchitectureClosed
  burialHistoryComputedClosed : S.burialHistoryComputed

def SedimentaryBasinClosed (S : SedimentaryBasinPackage) : Prop :=
  S.accommodationSpaceClosed ∧ S.stratigraphicArchitectureClosed ∧ S.burialHistoryComputed

theorem sedimentary_basin_closed_from_evidence (S : SedimentaryBasinPackage)
    (E : SedimentaryBasinEvidence S) : SedimentaryBasinClosed S := by
  exact And.intro E.accommodationSpaceClosedTerm
    (And.intro E.stratigraphicArchitectureClosedTerm E.burialHistoryComputedClosed)

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse