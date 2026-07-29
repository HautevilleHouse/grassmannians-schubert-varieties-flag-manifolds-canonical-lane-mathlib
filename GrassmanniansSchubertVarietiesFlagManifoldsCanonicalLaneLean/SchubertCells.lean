import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure SchubertCell where
  index : Nat
  dimension : Nat

structure SchubertVariety where
  cell : SchubertCell
  closure : Prop
  schubertConditions : Prop

structure SchubertCellEvidence (S : SchubertVariety) where
  cellDimensionClosed : S.cell.dimension ≥ 1
  closureClosed : S.closure
  schubertConditionsClosed : S.schubertConditions

def SchubertCellClosed (S : SchubertVariety) : Prop :=
  S.cell.dimension ≥ 1 ∧ S.closure ∧ S.schubertConditions

theorem schubert_cell_closed_from_evidence (S : SchubertVariety) (E : SchubertCellEvidence S) :
    SchubertCellClosed S := by
  exact And.intro E.cellDimensionClosed (And.intro E.closureClosed E.schubertConditionsClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse