import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

def ConstrainedFiniteAutomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_automorphism_endgame (A : AdmissibleClass) : ConstrainedFiniteAutomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean