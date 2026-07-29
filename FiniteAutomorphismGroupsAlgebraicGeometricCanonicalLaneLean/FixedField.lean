import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AutomorphismGroupDef
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AlgebraicStructure

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure FixedField (X : Type u) [AlgebraicStructure X] (G : FiniteAutomorphismGroup X) where
  field : Type u
  inclusion : field → X
  fixedByG : ∀ x : field, ∀ g : Subtype (λ f : X ≃ X => f ∈ G.group.carrier), (g.1) (inclusion x) = inclusion x
  algebraicClosure : Prop
  galoisCorrespondence : Subgroup (AutomorphismGroup X) ↔ IntermediateField X

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean