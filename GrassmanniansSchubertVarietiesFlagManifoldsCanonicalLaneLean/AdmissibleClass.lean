import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : SchubertAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SchuberWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
