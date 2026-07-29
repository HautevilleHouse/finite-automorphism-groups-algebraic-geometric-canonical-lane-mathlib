import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean.AutomorphismGroupDef

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FiniteWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse
end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean