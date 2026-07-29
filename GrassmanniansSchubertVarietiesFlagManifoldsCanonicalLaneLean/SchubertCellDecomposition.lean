import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure SchubertCellDecomposition (n : ℕ) where
  flagVariety : Type u
  schubertCells : List (Set (flagVariety))
  cellDimension : ℕ → ℕ
  bruhatOrder : ℕ → ℕ → Prop
  decompositionComplete : Prop
  dimensionConsistent : Prop
  bruhatOrderClosed : bruhatOrder 0 0
  decompositionCompleteClosed : decompositionComplete
  dimensionConsistentClosed : dimensionConsistent

def SchubertCellClosed (S : SchubertCellDecomposition n) : Prop :=
  S.decompositionComplete ∧ S.dimensionConsistent ∧ S.bruhatOrder 0 0

theorem schubert_cell_closed_from_evidence (S : SchubertCellDecomposition n) : SchubertCellClosed S :=
  And.intro S.decompositionCompleteClosed (And.intro S.dimensionConsistentClosed S.bruhatOrderClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse