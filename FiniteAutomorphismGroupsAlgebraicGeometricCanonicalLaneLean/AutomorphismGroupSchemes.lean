import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure AutomorphismGroupScheme (X : Type u) [CategoryTheory.Category.{v} X] where
  object : X
  automorphismGroup : Type w
  groupStructure : Group automorphismGroup
  action : automorphismGroup → (object ⟶ object)
  faithful : ∀ (f g : automorphismGroup), action f = action g → f = g
  finite : Fintype automorphismGroup

structure AutomorphismGroupSchemeEvidence (X : Type u) [CategoryTheory.Category.{v} X] (AS : AutomorphismGroupScheme X) where
  groupStructureClosed : Group AS.automorphismGroup
  actionClosed : ∀ (g : AS.automorphismGroup), AS.action g ∈ (AS.object ⟶ AS.object)
  faithfulClosed : ∀ (f g : AS.automorphismGroup), AS.action f = AS.action g → f = g
  finiteClosed : Fintype AS.automorphismGroup

def AutomorphismGroupSchemeClosed (X : Type u) [CategoryTheory.Category.{v} X] (AS : AutomorphismGroupScheme X) : Prop :=
  Group AS.automorphismGroup ∧
  (∀ (g : AS.automorphismGroup), AS.action g ∈ (AS.object ⟶ AS.object)) ∧
  (∀ (f g : AS.automorphismGroup), AS.action f = AS.action g → f = g) ∧
  Fintype AS.automorphismGroup

theorem automorphism_group_scheme_closed_from_evidence (X : Type u) [CategoryTheory.Category.{v} X] (AS : AutomorphismGroupScheme X) (E : AutomorphismGroupSchemeEvidence X AS) : AutomorphismGroupSchemeClosed X AS := by
  exact And.intro E.groupStructureClosed (And.intro (fun g => E.actionClosed g) (And.intro E.faithfulClosed E.finiteClosed))

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse
