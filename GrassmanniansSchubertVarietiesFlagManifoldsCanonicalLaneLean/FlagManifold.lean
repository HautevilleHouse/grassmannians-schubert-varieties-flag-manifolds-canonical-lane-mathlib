import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure FlagManifold where
  n : Nat
  dimensions : List Nat
  flagVariety : Type
  transitiveGroupAction : Prop
  borelSubgroup : Prop

structure FlagManifoldEvidence (F : FlagManifold) where
  flagVarietyClosed : F.flagVariety ∈ List Type
  transitiveGroupActionClosed : F.transitiveGroupAction
  borelSubgroupClosed : F.borelSubgroup

def FlagManifoldClosed (F : FlagManifold) : Prop :=
  F.transitiveGroupAction ∧ F.borelSubgroup

theorem flag_manifold_closed_from_evidence (F : FlagManifold) (E : FlagManifoldEvidence F) :
    FlagManifoldClosed F := by
  exact And.intro E.transitiveGroupActionClosed E.borelSubgroupClosed

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse