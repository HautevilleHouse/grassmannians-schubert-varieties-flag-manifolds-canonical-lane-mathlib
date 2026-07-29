import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean

structure GrassmannianCellPackage where
  grassmannian : Type u
  topology : TopologicalSpace grassmannian
  cellDecomposition : Prop
  schubertCells : Prop
  incidenceRelations : Prop
  grassmannianTerm : grassmannian
  topologyTerm : topology
  cellDecompositionTerm : cellDecomposition
  schubertCellsTerm : schubertCells
  incidenceRelationsTerm : incidenceRelations

structure GrassmannianCellEvidence (G : GrassmannianCellPackage) where
  cellDecompositionClosed : G.cellDecomposition
  schubertCellsClosed : G.schubertCells
  incidenceRelationsClosed : G.incidenceRelations

def GrassmannianCellClosed (G : GrassmannianCellPackage) : Prop :=
  G.cellDecomposition ∧ G.schubertCells ∧ G.incidenceRelations

theorem grassmannian_cell_closed_from_evidence (G : GrassmannianCellPackage) (E : GrassmannianCellEvidence G) :
    GrassmannianCellClosed G := by
  exact And.intro E.cellDecompositionClosed (And.intro E.schubertCellsClosed E.incidenceRelationsClosed)

end GrassmanniansSchubertVarietiesFlagManifoldsCanonicalLaneLean
end HautevilleHouse