import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure InvariantSubscheme (X : Type u) [CategoryTheory.Category.{v} X] (G : AutomorphismGroupScheme X) where
  subscheme : X
  inclusion : subscheme ⟶ G.object
  invariant : ∀ (g : G.automorphismGroup), G.action g ∘ inclusion = inclusion
  subschemeFinite : Fintype (AutomorphismGroupScheme.automorphismGroup)

structure InvariantSubschemeEvidence (IS : InvariantSubscheme X G) where
  inclusionClosed : IS.inclusion
  invariantClosed : ∀ (g : G.automorphismGroup), G.action g ∘ IS.inclusion = IS.inclusion
  subschemeFiniteClosed : IS.subschemeFinite

def InvariantSubschemeClosed (IS : InvariantSubscheme X G) : Prop :=
  IS.invariant ∧ IS.subschemeFinite

theorem invariant_subsheme_closed_from_evidence (IS : InvariantSubscheme X G) (E : InvariantSubschemeEvidence X G IS) : InvariantSubschemeClosed X G IS := by
  exact And.intro E.invariantClosed E.subschemeFiniteClosed

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse
