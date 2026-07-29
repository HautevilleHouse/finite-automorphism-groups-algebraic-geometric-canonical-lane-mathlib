import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AutomorphismGroupDef
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AlgebraicStructure

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure RepresentationTheorem (X : Type u) [AlgebraicStructure X] (G : FiniteAutomorphismGroup X) where
  representationSpace : Type u
  representationMorphism : AutomorphismGroup X → LinearMap representationSpace representationSpace
  faithful : Function.Injective representationMorphism
  irreducibleDecomposition : List (Submodule representationSpace)
  characterTable : representationSpace → ℂ
  schurOrthogonality : ∀ χ₁ χ₂ : characterTable, orthogonalityCondition χ₁ χ₂

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean