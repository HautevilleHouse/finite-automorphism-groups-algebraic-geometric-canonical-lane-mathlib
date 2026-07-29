import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure AutomorphismGroup (X : Type u) [AlgebraicStructure X] where
  carrier : Set (X ≃ X)
  groupOperation : X ≃ X → X ≃ X → X ≃ X
  identityElement : X ≃ X
  inverseElement : X ≃ X → X ≃ X
  closureUnderOperation : ∀ f g ∈ carrier, groupOperation f g ∈ carrier
  identityInGroup : identityElement ∈ carrier
  inverseInGroup : ∀ f ∈ carrier, inverseElement f ∈ carrier
  associativity : ∀ f g h ∈ carrier, groupOperation (groupOperation f g) h = groupOperation f (groupOperation g h)
  identityLaw : ∀ f ∈ carrier, groupOperation f identityElement = f ∧ groupOperation identityElement f = f
  inverseLaw : ∀ f ∈ carrier, groupOperation f (inverseElement f) = identityElement ∧ groupOperation (inverseElement f) f = identityElement

structure FiniteAutomorphismGroup (X : Type u) [AlgebraicStructure X] where
  group : AutomorphismGroup X
  finite : Fintype (Subtype (λ f : X ≃ X => f ∈ group.carrier))

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean