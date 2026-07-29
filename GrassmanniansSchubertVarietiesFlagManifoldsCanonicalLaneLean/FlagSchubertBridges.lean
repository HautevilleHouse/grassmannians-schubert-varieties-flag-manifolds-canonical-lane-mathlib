import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.FlagVarietiesBundle
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.GrassmannianCells
import HautevilleHouse.GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.SchubertCalculus

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FlagVarietyClosed A.object ∧ GrassmannianCellClosed A.object ∧ SchubertCalculusClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro (by
    have h := A.object.conclusion
    exact h) (And.intro (by
      have h := A.object.conclusion
      exact h) (by
        have h := A.object.conclusion
        exact h))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse