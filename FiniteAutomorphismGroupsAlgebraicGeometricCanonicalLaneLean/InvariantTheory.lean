import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure InvariantTheoryPackage where
  groupAction : AdmissibleClass → Prop
  polynomialRing : Type u
  invariantSubring : Type v
  finiteGeneration : Prop
  henselLifting : Prop

structure InvariantTheoryEvidence (P : InvariantTheoryPackage) where
  finiteGenerationClosed : P.finiteGeneration
  henselLiftingClosed : P.henselLifting

def InvariantTheoryClosed (P : InvariantTheoryPackage) : Prop :=
  P.finiteGeneration ∧ P.henselLifting

theorem invariant_theory_closed_from_evidence (P : InvariantTheoryPackage) (E : InvariantTheoryEvidence P) :
    InvariantTheoryClosed P := by
  exact And.intro E.finiteGenerationClosed E.henselLiftingClosed

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse