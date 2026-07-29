import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure GrassmannianVariety (k n : ℕ) where
  field : Type u
  vectorSpace : Type v
  subspaces : Type w
  dimensionCondition : Prop
  grassmannianSet : Set (Subspace (field) (vectorSpace))
  smoothStructure : Prop
  tautologicalBundle : Prop
  grassmannianSetClosed : grassmannianSet ≠ ∅
  smoothStructureClosed : smoothStructure
  tautologicalBundleClosed : tautologicalBundle

def GrassmannianClosed {k n : ℕ} (G : GrassmannianVariety k n) : Prop :=
  G.grassmannianSet ≠ ∅ ∧ G.smoothStructure ∧ G.tautologicalBundle

theorem grassmannian_closed_from_evidence {k n : ℕ} (G : GrassmannianVariety k n) : GrassmannianClosed G :=
  And.intro G.grassmannianSetClosed (And.intro G.smoothStructureClosed G.tautologicalBundleClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse