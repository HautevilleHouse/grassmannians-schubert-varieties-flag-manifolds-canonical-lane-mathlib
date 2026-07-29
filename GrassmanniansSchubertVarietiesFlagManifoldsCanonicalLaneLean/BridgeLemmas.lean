import canonicalLaneMathlib.AdmissibleClass
import GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SchuberWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
