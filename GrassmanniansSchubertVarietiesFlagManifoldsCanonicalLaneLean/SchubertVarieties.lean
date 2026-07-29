import canonicalLaneMathlib.AdmissibleClass
import GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.GrassmannianGeometry

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure SchubertVarietyPackage (k n : ℕ) (G : GrassmannianPackage k n) where
  flag : Type u
  flagVariety : Type v
  topology : TopologicalSpace flagVariety
  partialFlag : Prop
  SchubertCell : ℕ → Type w
  SchubertCellDecomposition : Prop
  closureRelations : Prop
  cohomologyRing : Type x
  schubertCycle : Prop
  poincareDuality : Prop
  flagVarietySmooth : G.smoothStructure → flagVariety

structure SchubertVarietyEvidence (k n : ℕ) (G : GrassmannianPackage k n) (S : SchubertVarietyPackage k n G) where
  schubertCellDecompositionClosed : S.SchubertCellDecomposition
  closureRelationsClosed : S.closureRelations

def SchubertVarietyClosed (k n : ℕ) (G : GrassmannianPackage k n) (S : SchubertVarietyPackage k n G) : Prop :=
  S.SchubertCellDecomposition ∧ S.closureRelations

theorem schubert_variety_closed_from_evidence (k n : ℕ) (G : GrassmannianPackage k n) (S : SchubertVarietyPackage k n G) (E : SchubertVarietyEvidence k n G S) : SchubertVarietyClosed k n G S := by
  exact And.intro E.schubertCellDecompositionClosed E.closureRelationsClosed

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
