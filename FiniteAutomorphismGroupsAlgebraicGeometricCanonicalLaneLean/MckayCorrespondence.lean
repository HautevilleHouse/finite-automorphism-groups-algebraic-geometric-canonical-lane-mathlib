import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure MckayCorrespondencePackage where
  finiteSubgroup : AdmissibleClass → Prop
  representationRing : Type u
  mckayQuiver : Type v
  cohomologyIsomorphism : Prop

structure MckayCorrespondenceEvidence (M : MckayCorrespondencePackage) where
  cohomologyIsomorphismClosed : M.cohomologyIsomorphism

def MckayCorrespondenceClosed (M : MckayCorrespondencePackage) : Prop :=
  M.cohomologyIsomorphism

theorem mckay_correspondence_closed_from_evidence (M : MckayCorrespondencePackage) (E : MckayCorrespondenceEvidence M) :
    MckayCorrespondenceClosed M := by
  exact E.cohomologyIsomorphismClosed

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse