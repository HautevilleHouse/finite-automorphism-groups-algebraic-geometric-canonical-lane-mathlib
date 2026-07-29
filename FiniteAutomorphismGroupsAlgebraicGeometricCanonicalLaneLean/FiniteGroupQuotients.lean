import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure FiniteGroupQuotient (X : Type u) [CategoryTheory.Category.{v} X] where
  object : X
  groupAction : GroupAct (AutomorphismGroupScheme.object) (object)
  quotientObject : X
  quotientMap : object ⟶ quotientObject
  quotientFinite : Fintype (AutomorphismGroupScheme.automorphismGroup)

structure FiniteGroupQuotientEvidence (Q : FiniteGroupQuotient X) where
  groupActionClosed : Q.groupAction
  quotientMapClosed : Q.quotientMap
  quotientFiniteClosed : Q.quotientFinite

def FiniteGroupQuotientClosed (Q : FiniteGroupQuotient X) : Prop :=
  Q.groupAction ∧ Q.quotientMap ∧ Q.quotientFinite

theorem finite_group_quotient_closed_from_evidence (Q : FiniteGroupQuotient X) (E : FiniteGroupQuotientEvidence Q) : FiniteGroupQuotientClosed Q := by
  exact And.intro E.groupActionClosed (And.intro E.quotientMapClosed E.quotientFiniteClosed)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse
