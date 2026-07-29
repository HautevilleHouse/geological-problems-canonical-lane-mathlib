import GeologicalProblemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeologicalProblemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeologicalAdmittedObject where
  space : GeologicalSpace
  nonEmpty : Prop
  someProperty : Prop
  targetModel : Type
  targetTopology : TopologicalSpace targetModel
  equivalenceToModel : Prop
  conclusion : equivalenceToModel

structure GeologicalEndgameState where
  object : GeologicalAdmittedObject

def GeologicalWitnessClosed (O : GeologicalAdmittedObject) : Prop :=
  O.equivalenceToModel

end GeologicalProblemsCanonicalLaneLean
end HautevilleHouse