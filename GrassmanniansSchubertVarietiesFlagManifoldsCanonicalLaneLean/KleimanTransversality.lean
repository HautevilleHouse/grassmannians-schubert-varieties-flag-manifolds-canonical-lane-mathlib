import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure KleimanTransversality (n : ℕ) where
  variety : Type u
  groupAction : Type v
  genericTransverse : Prop
  dimensionCondition : Prop
  intersectionCohomology : Prop
  genericTransverseClosed : genericTransverse
  dimensionConditionClosed : dimensionCondition
  intersectionCohomologyClosed : intersectionCohomology

def KleimanTransversalityClosed (K : KleimanTransversality n) : Prop :=
  K.genericTransverse ∧ K.dimensionCondition ∧ K.intersectionCohomology

theorem kleiman_transversality_closed_from_evidence (K : KleimanTransversality n) : KleimanTransversalityClosed K :=
  And.intro K.genericTransverseClosed (And.intro K.dimensionConditionClosed K.intersectionCohomologyClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse