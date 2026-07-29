import canonicalLaneMathlib.AdmissibleClass
import GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.SchubertVarieties

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure FlagManifoldPackage (n : ℕ) where
  completeFlag : Type u
  topology : TopologicalSpace completeFlag
  smoothStructure : Prop
  lieGroup : Type v
  parabolicSubgroup : Type w
  homogeneousSpace : Prop
  bruhatDecomposition : Prop
  weylGroupAction : Prop
  flagSmooth : smoothStructure

structure FlagManifoldEvidence (n : ℕ) (F : FlagManifoldPackage n) where
  flagSmoothClosed : F.flagSmooth
  bruhatDecompositionClosed : F.bruhatDecomposition

def FlagManifoldClosed (n : ℕ) (F : FlagManifoldPackage n) : Prop :=
  F.flagSmooth ∧ F.bruhatDecomposition

theorem flag_manifold_closed_from_evidence (n : ℕ) (F : FlagManifoldPackage n) (E : FlagManifoldEvidence n F) : FlagManifoldClosed n F := by
  exact And.intro E.flagSmoothClosed E.bruhatDecompositionClosed

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
