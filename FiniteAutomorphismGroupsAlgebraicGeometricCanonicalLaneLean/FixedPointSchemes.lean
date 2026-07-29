import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure FixedPointScheme (X : Type u) [CategoryTheory.Category.{v} X] (G : AutomorphismGroupScheme X) where
  fixedLocus : X
  inclusion : fixedLocus ⟶ G.object
  fixedPointProperty : ∀ (x : fixedLocus), ∀ (g : G.automorphismGroup), G.action g (inclusion x) = inclusion x
  fixedLocusFinite : Fintype (AutomorphismGroupScheme.automorphismGroup)

structure FixedPointSchemeEvidence (FPS : FixedPointScheme X G) where
  inclusionClosed : FPS.inclusion
  fixedPointPropertyClosed : ∀ (x : FPS.fixedLocus), ∀ (g : G.automorphismGroup), G.action g (FPS.inclusion x) = FPS.inclusion x
  fixedLocusFiniteClosed : FPS.fixedLocusFinite

def FixedPointSchemeClosed (FPS : FixedPointScheme X G) : Prop :=
  FPS.fixedPointProperty ∧ FPS.fixedLocusFinite

theorem fixed_point_scheme_closed_from_evidence (FPS : FixedPointScheme X G) (E : FixedPointSchemeEvidence X G FPS) : FixedPointSchemeClosed X G FPS := by
  exact And.intro E.fixedPointPropertyClosed E.fixedLocusFiniteClosed

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse
