import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AutomorphismGroupDef
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AlgebraicStructure

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure FiniteAutomorphismAdmittedObject where
  space : Type u
  algebraicStructure : AlgebraicStructure space
  automorphismGroup : FiniteAutomorphismGroup space
  conclusion : FiniteGroup (AutomorphismGroup space)

structure AdmissibleClass where
  object : FiniteAutomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FiniteWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean