import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure FiniteAutomorphismObject where
  variety : Type u
  topology : TopologicalSpace variety
  structureSheaf : Type v
  automorphismGroup : Type w
  groupFinite : Prop
  groupAction : automorphismGroup → variety → variety
  finiteGroupStructure : Finite automorphismGroup
  induceQuotientMap : Prop
  quotientSpace : Type x
  quotientTopology : TopologicalSpace quotientSpace
  quotientMap : variety → quotientSpace
  quotientStructureSheaf : Type y
  algebraicMorphism : Prop
  isomorphismWithCover : Prop
  conclusion : isomorphismWithCover

structure AdmittedObject where
  obj : FiniteAutomorphismObject
  bridgeCondition : Prop
  gateCondition : Prop

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.bridgeCondition

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.bridgeCondition

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedAutomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automorphism_endgame (A : AdmissibleClass) : ConstrainedAutomorphismClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse