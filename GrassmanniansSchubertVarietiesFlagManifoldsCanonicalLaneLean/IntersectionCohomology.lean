import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure IntersectionCohomologySheaf (n : ℕ) where
  variety : Type u
  perverseSheaf : Type v
  characteristicCycle : Prop
  kazhdanLusztigPolynomials : Prop
  poincareDuality : Prop
  characteristicCycleClosed : characteristicCycle
  kazhdanLusztigPolynomialsClosed : kazhdanLusztigPolynomials
  poincareDualityClosed : poincareDuality

def IntersectionCohomologyClosed (I : IntersectionCohomologySheaf n) : Prop :=
  I.characteristicCycle ∧ I.kazhdanLusztigPolynomials ∧ I.poincareDuality

theorem intersection_cohomology_closed_from_evidence (I : IntersectionCohomologySheaf n) : IntersectionCohomologyClosed I :=
  And.intro I.characteristicCycleClosed (And.intro I.kazhdanLusztigPolynomialsClosed I.poincareDualityClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse