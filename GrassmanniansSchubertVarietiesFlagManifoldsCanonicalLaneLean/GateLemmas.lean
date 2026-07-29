import canonicalLaneMathlib.AdmissibleClass
import GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
