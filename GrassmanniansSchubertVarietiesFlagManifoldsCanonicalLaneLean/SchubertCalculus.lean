import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure SchubertCalculusPackage where
  schubertClasses : Type u
  intersectionProduct : Prop
  pieriFormula : Prop
  giambelliFormula : Prop
  littlewoodRichardsonRule : Prop
  cohomologyRing : Prop

def schubertCalculusClosed (P : SchubertCalculusPackage) : Prop :=
  P.intersectionProduct ∧ P.pieriFormula ∧ P.giambelliFormula ∧
  P.littlewoodRichardsonRule ∧ P.cohomologyRing

structure SchubertCalculusEvidence (P : SchubertCalculusPackage) where
  intersectionProductClosed : P.intersectionProduct
  pieriFormulaClosed : P.pieriFormula
  giambelliFormulaClosed : P.giambelliFormula
  littlewoodRichardsonRuleClosed : P.littlewoodRichardsonRule
  cohomologyRingClosed : P.cohomologyRing

theorem schubertCalculusClosedFromEvidence (P : SchubertCalculusPackage)
    (E : SchubertCalculusEvidence P) : schubertCalculusClosed P := by
  exact And.intro E.intersectionProductClosed
    (And.intro E.pieriFormulaClosed
      (And.intro E.giambelliFormulaClosed
        (And.intro E.littlewoodRichardsonRuleClosed E.cohomologyRingClosed)))

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse