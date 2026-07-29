import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure WeylGroupAction where
  weylGroup : Type
  actionOnFlag : Prop
  bruhatOrder : Prop
  reducedDecompositions : Prop

structure WeylGroupActionEvidence (W : WeylGroupAction) where
  actionOnFlagClosed : W.actionOnFlag
  bruhatOrderClosed : W.bruhatOrder
  reducedDecompositionsClosed : W.reducedDecompositions

def WeylGroupActionClosed (W : WeylGroupAction) : Prop :=
  W.actionOnFlag ∧ W.bruhatOrder ∧ W.reducedDecompositions

theorem weyl_group_action_closed_from_evidence (W : WeylGroupAction) (E : WeylGroupActionEvidence W) :
    WeylGroupActionClosed W := by
  exact And.intro E.actionOnFlagClosed (And.intro E.bruhatOrderClosed E.reducedDecompositionsClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse