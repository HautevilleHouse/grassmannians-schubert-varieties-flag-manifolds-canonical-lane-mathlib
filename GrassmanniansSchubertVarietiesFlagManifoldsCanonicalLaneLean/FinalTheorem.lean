import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.FlagSchubertBridges

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

def ConstrainedSchubertFlagClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_schubert_flag_endgame (A : AdmissibleClass) :
    ConstrainedSchubertFlagClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse