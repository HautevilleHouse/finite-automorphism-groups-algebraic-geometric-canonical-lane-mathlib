import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

def FiniteAutomorphismGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem finite_automorphism_group_endgame (A : AdmissibleClass) :
    FiniteAutomorphismGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse
