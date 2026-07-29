import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.GrassmannianStructures
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.SchubertCalculus
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.BruhatDecomposition

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

def flagVarietyAdmissibleClass (G : FlagManifold) : AdmissibleClass :=
  { object := G
    endpointSatisfied := flagManifoldClosed G
    remainderRecorded := True
    gateWitness := Or.inl (by
      have h : flagManifoldClosed G := sorry
      exact h)
  }

def ConstrainedFlagVarietyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_flag_variety_endgame (A : AdmissibleClass) :
    ConstrainedFlagVarietyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse