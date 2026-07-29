import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure OrbitDecomposition (X : Type u) [CategoryTheory.Category.{v} X] (G : AutomorphismGroupScheme X) where
  orbits : Set (Set G.object)
  partition : G.object ≃ Σ (o : orbits), o
  orbitFinite : ∀ (o : orbits), Fintype (o : Set G.object)

structure OrbitDecompositionEvidence (OD : OrbitDecomposition X G) where
  partitionClosed : OD.partition
  orbitFiniteClosed : ∀ (o : OD.orbits), Fintype (o : Set G.object)

def OrbitDecompositionClosed (OD : OrbitDecomposition X G) : Prop :=
  OD.partition ∧ ∀ (o : OD.orbits), Fintype (o : Set G.object)

theorem orbit_decomposition_closed_from_evidence (OD : OrbitDecomposition X G) (E : OrbitDecompositionEvidence X G OD) : OrbitDecompositionClosed X G OD := by
  exact And.intro E.partitionClosed E.orbitFiniteClosed

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse
