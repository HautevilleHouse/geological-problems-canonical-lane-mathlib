import GeologicalProblemsCanonicalLaneLean.GeoObjects

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

structure PrimitivePlate where
  PlateType : Type
  motion : PlateType → PlateType
  boundaryInteractions : Prop
  boundaryInteractionsTerm : boundaryInteractions

structure PrimitiveFaultSystem where
  FaultType : Type
  stressField : FaultType → Prop
  ruptureCriteria : Prop
  ruptureCriteriaTerm : ruptureCriteria

structure PrimitiveGeologicalSystem where
  plate : PrimitivePlate
  fault : PrimitiveFaultSystem
  seismicCoupling : Prop
  seismicCouplingTerm : seismicCoupling

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse