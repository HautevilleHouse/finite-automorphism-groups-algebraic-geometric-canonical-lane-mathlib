import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure UniversalPropertyPackage where
  group : AutomorphismGroupPackage
  universalMappingProperty : Prop
  uniqueFactorization : Prop
  adjointFunctorExists : Prop
  universalMappingPropertyTerm : universalMappingProperty
  uniqueFactorizationTerm : uniqueFactorization
  adjointFunctorExistsTerm : adjointFunctorExists

structure UniversalPropertyEvidence (U : UniversalPropertyPackage) where
  universalMappingPropertyClosed : U.universalMappingProperty
  uniqueFactorizationClosed : U.uniqueFactorization
  adjointFunctorExistsClosed : U.adjointFunctorExists

def UniversalPropertyClosed (U : UniversalPropertyPackage) : Prop :=
  U.universalMappingProperty ∧ U.uniqueFactorization ∧ U.adjointFunctorExists

theorem universal_property_closed_from_evidence (U : UniversalPropertyPackage)
    (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  exact And.intro E.universalMappingPropertyClosed (And.intro E.uniqueFactorizationClosed E.adjointFunctorExistsClosed)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse