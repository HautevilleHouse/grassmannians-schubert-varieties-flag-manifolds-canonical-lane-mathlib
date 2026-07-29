import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure BruhatDecomposition (G : FlagManifold) where
  weylGroup : Type u
  bruhatOrder : Prop
  schubertCells : Prop
  closureInclusion : Prop
  dimensionFormula : Prop
  cohomologyBasis : Prop

def bruhatDecompositionClosed (B : BruhatDecomposition G) : Prop :=
  B.bruhatOrder ∧ B.schubertCells ∧ B.closureInclusion ∧
  B.dimensionFormula ∧ B.cohomologyBasis

structure BruhatDecompositionEvidence (G : FlagManifold)
    (B : BruhatDecomposition G) where
  bruhatOrderClosed : B.bruhatOrder
  schubertCellsClosed : B.schubertCells
  closureInclusionClosed : B.closureInclusion
  dimensionFormulaClosed : B.dimensionFormula
  cohomologyBasisClosed : B.cohomologyBasis

theorem bruhatDecompositionClosedFromEvidence (G : FlagManifold)
    (B : BruhatDecomposition G) (E : BruhatDecompositionEvidence G B) :
    bruhatDecompositionClosed B := by
  exact And.intro E.bruhatOrderClosed
    (And.intro E.schubertCellsClosed
      (And.intro E.closureInclusionClosed
        (And.intro E.dimensionFormulaClosed E.cohomologyBasisClosed)))

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse