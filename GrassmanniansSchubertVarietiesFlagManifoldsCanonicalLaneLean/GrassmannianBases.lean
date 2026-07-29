import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure GrassmannianPackage (k : Type) (n : ℕ) where
  V : VectorSpace k
  dimV : ℕ
  grassmannian : Set (Subspace k V)
  dimCondition : dimV = n
  grassmannianDimension : ℕ

structure GrassmannianEvidence (k : Type) (n : ℕ) (G : GrassmannianPackage k n) where
  vectorSpace : VectorSpace k
  grassmannianDefined : G.grassmannian ≠ ∅
  dimConditionClosed : G.dimCondition

def GrassmannianClosed (k : Type) (n : ℕ) (G : GrassmannianPackage k n) : Prop :=
  G.grassmannian ≠ ∅ ∧ G.dimCondition

theorem grassmannian_closed_from_evidence (k : Type) (n : ℕ) (G : GrassmannianPackage k n) (E : GrassmannianEvidence k n G) : GrassmannianClosed k n G :=
  And.intro E.grassmannianDefined E.dimConditionClosed

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
