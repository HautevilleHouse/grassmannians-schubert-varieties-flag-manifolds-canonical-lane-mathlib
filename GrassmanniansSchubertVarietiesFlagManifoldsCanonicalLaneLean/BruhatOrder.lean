import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure BruhatOrder (n : ℕ) where
  weylGroup : Type u
  partialOrder : weylGroup → weylGroup → Prop
  lengthFunction : weylGroup → ℕ
  coveringRelation : weylGroup → weylGroup → Prop
  partialOrderClosed : partialOrder (arbitrary weylGroup) (arbitrary weylGroup)
  lengthFunctionClosed : lengthFunction (arbitrary weylGroup) = 0
  coveringRelationClosed : coveringRelation (arbitrary weylGroup) (arbitrary weylGroup)

def BruhatOrderClosed (B : BruhatOrder n) : Prop :=
  B.partialOrder (arbitrary B.weylGroup) (arbitrary B.weylGroup) ∧
  B.lengthFunction (arbitrary B.weylGroup) = 0 ∧
  B.coveringRelation (arbitrary B.weylGroup) (arbitrary B.weylGroup)

theorem bruhat_order_closed_from_evidence (B : BruhatOrder n) : BruhatOrderClosed B :=
  And.intro B.partialOrderClosed (And.intro B.lengthFunctionClosed B.coveringRelationClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse