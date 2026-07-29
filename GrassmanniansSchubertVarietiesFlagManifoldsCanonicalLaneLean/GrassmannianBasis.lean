import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure GrassmannianBasis where
  n : Nat
  k : Nat
  basisVectors : Type
  dimension : Prop

structure GrassmannianVariety where
  basis : GrassmannianBasis
  pluckerEmbedding : Prop
  chowCoordinates : Prop

structure GrassmannianEvidence (G : GrassmannianVariety) where
  dimensionClosed : G.basis.dimension
  pluckerEmbeddingClosed : G.pluckerEmbedding
  chowCoordinatesClosed : G.chowCoordinates

def GrassmannianClosed (G : GrassmannianVariety) : Prop :=
  G.basis.dimension ∧ G.pluckerEmbedding ∧ G.chowCoordinates

theorem grassmannian_closed_from_evidence (G : GrassmannianVariety) (E : GrassmannianEvidence G) :
    GrassmannianClosed G := by
  exact And.intro E.dimensionClosed (And.intro E.pluckerEmbeddingClosed E.chowCoordinatesClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse