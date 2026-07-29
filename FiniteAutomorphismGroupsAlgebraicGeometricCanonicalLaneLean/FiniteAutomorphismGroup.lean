import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure FiniteAutomorphismGroup where
  carrier : Type u
  groupStructure : Group carrier
  automorphismAction : carrier → carrier
  finiteOrder : Prop
  actionPreservesStructure : Prop

structure AdmittedAutomorphismObject where
  group : FiniteAutomorphismGroup
  targetVariety : Type v
  topology : TopologicalSpace targetVariety
  algebraicStructure : Prop
  actionOnVariety : carrier → targetVariety → targetVariety
  finiteFixedLocus : Prop
  conclusion : actionPreservesStructure ∧ finiteFixedLocus

structure AutomorphismEndgameState where
  object : AdmittedAutomorphismObject

def AutomorphismWitnessClosed (O : AdmittedAutomorphismObject) : Prop :=
  O.conclusion

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse