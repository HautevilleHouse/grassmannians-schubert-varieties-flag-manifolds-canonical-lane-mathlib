import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure Grassmannian (k n : ℕ) where
  field : Type u
  vectorSpace : VectorSpace field (Fin n → field)
  kDimSubspaces : Set (Subspace field (Fin n → field))
  grassmannianManifold : Prop
  smoothStructure : Prop

def grassmannianClosed (G : Grassmannian k n) : Prop :=
  G.grassmannianManifold ∧ G.smoothStructure

structure FlagManifold where
  n : ℕ
  flagSignature : List ℕ
  flagVariety : Prop
  projectiveVariety : Prop
  smoothProjective : Prop

def flagManifoldClosed (F : FlagManifold) : Prop :=
  F.flagVariety ∧ F.projectiveVariety ∧ F.smoothProjective

structure SchubertVariety (G : Grassmannian k n) where
  partition : List ℕ
  schubertCell : Set (Subspace (G.field) (Fin n → G.field))
  cellDecomposition : Prop
  cohomologyClass : Prop
  closureRelation : Prop

def schubertVarietyClosed (S : SchubertVariety G) : Prop :=
  S.cellDecomposition ∧ S.cohomologyClass ∧ S.closureRelation

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse