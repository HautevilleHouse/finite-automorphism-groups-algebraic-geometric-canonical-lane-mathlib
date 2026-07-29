import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AutomorphismGroupDef
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.FixedField

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure GaloisCorrespondence (X : Type u) [AlgebraicStructure X] (G : FiniteAutomorphismGroup X) where
  intermediateFields : Set (IntermediateField X)
  subgroups : Set (Subgroup (AutomorphismGroup X))
  galoisConnection : GaloisConnection (λ I : IntermediateField X => Fix X (AutomorphismGroup X) I) (λ H : Subgroup (AutomorphismGroup X) => FixedField X H)
  closedUnderDuality : ∀ I : IntermediateField X, Fix X (AutomorphismGroup X) (FixedField X (Fix X (AutomorphismGroup X) I)) = I
  finiteIndexCorrespondence : ∀ H : Subgroup (AutomorphismGroup X), Fintype (Quotient H) ↔ FiniteDimensional (FixedField X H) X

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean