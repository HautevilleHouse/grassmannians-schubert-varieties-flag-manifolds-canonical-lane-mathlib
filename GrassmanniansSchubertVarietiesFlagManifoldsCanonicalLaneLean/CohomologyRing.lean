import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.FlagManifolds

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure CohomologyRingPackage (k : Type) (n : ℕ) (F : FlagManifoldPackage k n) where
  cohomologyRing : Type
  schubertClasses : List (CohomologyClass cohomologyRing)
  ringStructure : Prop
  schubertRelations : Prop

structure CohomologyRingEvidence (k : Type) (n : ℕ) (F : FlagManifoldPackage k n) (C : CohomologyRingPackage k n F) where
  schubertClassesNonempty : C.schubertClasses ≠ []
  ringStructureClosed : C.ringStructure

def CohomologyRingClosed (k : Type) (n : ℕ) (F : FlagManifoldPackage k n) (C : CohomologyRingPackage k n F) : Prop :=
  C.schubertClasses ≠ [] ∧ C.ringStructure ∧ C.schubertRelations

theorem cohomology_ring_closed_from_evidence (k : Type) (n : ℕ) (F : FlagManifoldPackage k n) (C : CohomologyRingPackage k n F) (E : CohomologyRingEvidence k n F C) : CohomologyRingClosed k n F C :=
  And.intro E.schubertClassesNonempty (And.intro E.ringStructureClosed C.schubertRelations)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
