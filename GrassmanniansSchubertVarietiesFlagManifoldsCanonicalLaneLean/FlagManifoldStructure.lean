import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure FlagManifold (n : ℕ) where
  field : Type u
  vectorSpace : Type v
  flagType : Type w
  nestedSubspaces : (List ℕ) → Set (flagType)
  smoothManifold : Prop
  transitiveGroupAction : Prop
  bruhatDecomposition : Prop
  smoothManifoldClosed : smoothManifold
  transitiveGroupActionClosed : transitiveGroupAction
  bruhatDecompositionClosed : bruhatDecomposition

def FlagManifoldClosed (F : FlagManifold n) : Prop :=
  F.smoothManifold ∧ F.transitiveGroupAction ∧ F.bruhatDecomposition

theorem flag_manifold_closed_from_evidence (F : FlagManifold n) : FlagManifoldClosed F :=
  And.intro F.smoothManifoldClosed (And.intro F.transitiveGroupActionClosed F.bruhatDecompositionClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse