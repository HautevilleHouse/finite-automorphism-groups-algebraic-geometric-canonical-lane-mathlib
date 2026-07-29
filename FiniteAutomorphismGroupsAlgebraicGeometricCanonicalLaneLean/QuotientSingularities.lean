import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure QuotientSingularityPackage where
  groupAction : AdmissibleClass → Prop
  quotientVariety : Type u
  resolutionExists : Prop
  crepantResolution : Prop
  mldBound : Prop

structure QuotientSingularityEvidence (Q : QuotientSingularityPackage) where
  resolutionExistsClosed : Q.resolutionExists
  crepantResolutionClosed : Q.crepantResolution
  mldBoundClosed : Q.mldBound

def QuotientSingularityClosed (Q : QuotientSingularityPackage) : Prop :=
  Q.resolutionExists ∧ Q.crepantResolution ∧ Q.mldBound

theorem quotient_singularity_closed_from_evidence (Q : QuotientSingularityPackage) (E : QuotientSingularityEvidence Q) :
    QuotientSingularityClosed Q := by
  exact And.intro E.resolutionExistsClosed (And.intro E.crepantResolutionClosed E.mldBoundClosed)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse