import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

class AlgebraicStructure (X : Type u) where
  operations : List (X → X → X)
  relations : List (Prop)
  finitelyGenerated : Prop
  decidableEq : DecidableEq X

definesAlgebraicVariety (X : Type u) [AlgebraicStructure X] : Prop :=
  AlgebraicStructure.finitelyGenerated X

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean