import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean

structure StructureDecompositionPackage where
  group : AutomorphismGroupPackage
  compositionSeries : Prop
  jordanHolderTheorem : Prop
  simpleFactorsClassified : Prop
  compositionSeriesTerm : compositionSeries
  jordanHolderTheoremTerm : jordanHolderTheorem
  simpleFactorsClassifiedTerm : simpleFactorsClassified

structure StructureDecompositionEvidence (D : StructureDecompositionPackage) where
  compositionSeriesClosed : D.compositionSeries
  jordanHolderTheoremClosed : D.jordanHolderTheorem
  simpleFactorsClassifiedClosed : D.simpleFactorsClassified

def StructureDecompositionClosed (D : StructureDecompositionPackage) : Prop :=
  D.compositionSeries ∧ D.jordanHolderTheorem ∧ D.simpleFactorsClassified

theorem structure_decomposition_closed_from_evidence (D : StructureDecompositionPackage)
    (E : StructureDecompositionEvidence D) : StructureDecompositionClosed D := by
  exact And.intro E.compositionSeriesClosed (And.intro E.jordanHolderTheoremClosed E.simpleFactorsClassifiedClosed)

end FiniteAutomorphismGroupsAlgebraicGeometricCanonicalLaneLean
end HautevilleHouse