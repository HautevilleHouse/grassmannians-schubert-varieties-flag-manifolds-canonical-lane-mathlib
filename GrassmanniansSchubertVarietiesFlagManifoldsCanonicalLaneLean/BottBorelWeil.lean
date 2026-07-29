import canonicalLaneMathlib.AdmissibleClass
import GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean.SchubertCalculus

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure BottBorelWeilPackage (g : LieAlgebra) (λ : Weight) where
  flagVariety : Type u
  lineBundle : Type v
  cohomology : ℕ → Type w
  vanishingTheorem : Prop
  equivariant : Prop
  characterFormula : Prop
  theoremProved : vanishingTheorem ∧ characterFormula

structure BottBorelWeilEvidence (g : LieAlgebra) (λ : Weight) (B : BottBorelWeilPackage g λ) where
  vanishingTheoremClosed : B.vanishingTheorem
  characterFormulaClosed : B.characterFormula

def BottBorelWeilClosed (g : LieAlgebra) (λ : Weight) (B : BottBorelWeilPackage g λ) : Prop :=
  B.vanishingTheorem ∧ B.characterFormula

theorem bott_borel_weil_closed_from_evidence (g : LieAlgebra) (λ : Weight) (B : BottBorelWeilPackage g λ) (E : BottBorelWeilEvidence g λ B) : BottBorelWeilClosed g λ B := by
  exact And.intro E.vanishingTheoremClosed E.characterFormulaClosed

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse
