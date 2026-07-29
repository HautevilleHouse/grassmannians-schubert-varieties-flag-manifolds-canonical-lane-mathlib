import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure GrassmannianPackage (k n : ℕ) where
  field : Type u
  grassmannian : Type v
  topology : TopologicalSpace grassmannian
  smoothStructure : Prop
  tautologicalBundle : Type w
  tautologicalRank : ℕ
  tautologicalRankEq : tautologicalRank = k
  canonicalBundle : Type x
  lineBundle : Type y
  grassmannianSmooth : smoothStructure

structure GrassmannianEvidence (k n : ℕ) (G : GrassmannianPackage k n) where
  grassmannianSmoothClosed : G.grassmannianSmooth
  tautologicalRankCorrect : G.tautologicalRank = k

def GrassmannianClosed (k n : ℕ) (G : GrassmannianPackage k n) : Prop :=
  G.grassmannianSmooth ∧ G.tautologicalRank = k

theorem grassmannian_closed_from_evidence (k n : ℕ) (G : GrassmannianPackage k n) (E : GrassmannianEvidence k n G) : GrassmannianClosed k n G := by
  exact And.intro E.grassmannianSmoothClosed E.tautologicalRankCorrect

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
