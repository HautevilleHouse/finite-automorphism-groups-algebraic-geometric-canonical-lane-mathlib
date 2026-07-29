import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure FiniteAutAdmittedObject where
  group : Type u
  action : Type v
  finiteAutomorphismGroup : Prop
  algebraicGeometricStructure : Prop
  conclusion : finiteAutomorphismGroup ∧ algebraicGeometricStructure

def FiniteAutWitnessClosed (O : FiniteAutAdmittedObject) : Prop :=
  O.finiteAutomorphismGroup ∧ O.algebraicGeometricStructure

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse
