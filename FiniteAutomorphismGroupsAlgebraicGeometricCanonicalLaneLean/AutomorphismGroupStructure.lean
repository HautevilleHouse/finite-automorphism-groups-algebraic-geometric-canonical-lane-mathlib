import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure AutomorphismGroupPackage where
  baseVariety : Type u
  baseField : Type v
  groupType : Type w
  groupOperation : groupType → groupType → groupType
  groupInverse : groupType → groupType
  groupIdentity : groupType
  groupAxioms : Prop
  actsAlgebraically : Prop
  preservesStructure : Prop
  actsAlgebraicallyTerm : actsAlgebraically
  preservesStructureTerm : preservesStructure

structure AutomorphismGroupEvidence (P : AutomorphismGroupPackage) where
  groupAxiomsClosed : P.groupAxioms
  actsAlgebraicallyClosed : P.actsAlgebraically
  preservesStructureClosed : P.preservesStructure

def AutomorphismGroupClosed (P : AutomorphismGroupPackage) : Prop :=
  P.groupAxioms ∧ P.actsAlgebraically ∧ P.preservesStructure

theorem automorphism_group_closed_from_evidence (P : AutomorphismGroupPackage)
    (E : AutomorphismGroupEvidence P) : AutomorphismGroupClosed P := by
  exact And.intro E.groupAxiomsClosed (And.intro E.actsAlgebraicallyClosed E.preservesStructureClosed)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse