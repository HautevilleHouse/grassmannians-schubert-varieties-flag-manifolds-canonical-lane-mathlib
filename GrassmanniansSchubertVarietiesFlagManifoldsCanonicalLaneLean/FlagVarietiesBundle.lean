import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure FlagVarietyPackage where
  flagType : Type u
  topology : TopologicalSpace flagType
  smoothStructure : Prop
  dimension : Nat
  borelSubgroup : Prop
  flagTypeTerm : flagType
  topologyTerm : topology
  smoothStructureTerm : smoothStructure
  dimensionTerm : dimension = 0
  borelSubgroupTerm : borelSubgroup

structure FlagVarietyEvidence (F : FlagVarietyPackage) where
  smoothStructureClosed : F.smoothStructure
  dimensionClosed : F.dimension = 0
  borelSubgroupClosed : F.borelSubgroup

def FlagVarietyClosed (F : FlagVarietyPackage) : Prop :=
  F.smoothStructure ∧ F.dimension = 0 ∧ F.borelSubgroup

theorem flag_variety_closed_from_evidence (F : FlagVarietyPackage) (E : FlagVarietyEvidence F) :
    FlagVarietyClosed F := by
  exact And.intro E.smoothStructureClosed (And.intro E.dimensionClosed E.borelSubgroupClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse