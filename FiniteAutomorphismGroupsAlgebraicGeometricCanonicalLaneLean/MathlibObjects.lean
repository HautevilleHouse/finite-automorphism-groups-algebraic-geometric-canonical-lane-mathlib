import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure AdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  algebraicStructure : Prop
  automorphismGroupType : Type
  automorphismGroupTopology : TopologicalSpace automorphismGroupType
  finiteAutomorphismGroup : Prop
  conclusion : finiteAutomorphismGroup

def AnAutomorphismGroupClosed (O : AdmittedObject) : Prop :=
  O.finiteAutomorphismGroup

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse