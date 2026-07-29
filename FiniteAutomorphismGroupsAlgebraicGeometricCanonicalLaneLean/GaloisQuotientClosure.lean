import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.FiniteAutomorphismBridge

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure GaloisCover where
  totalSpace : Type u
  totalTopology : TopologicalSpace totalSpace
  baseSpace : Type v
  baseTopology : TopologicalSpace baseSpace
  coveringMap : totalSpace → baseSpace
  deckGroup : Type w
  deckGroupFinite : Finite deckGroup
  deckAction : deckGroup → totalSpace → totalSpace
  galoisProperty : Prop
  quotientHomeomorphicBase : Prop

def GaloisQuotientClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem galois_quotient_endgame (A : AdmissibleClass) : GaloisQuotientClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse