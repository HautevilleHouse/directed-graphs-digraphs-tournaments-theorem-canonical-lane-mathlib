import canonicalLaneMathlib.AdmissibleClass
import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure TournamentPackage where
  digraph : DirectedGraphSpace
  antisymmetric : ∀ u v, digraph.graph u v → ¬ digraph.graph v u
  total : ∀ u v, u ≠ v → (digraph.graph u v ∨ digraph.graph v u)
  irreflexive : ∀ u, ¬ digraph.graph u u

structure TournamentEvidence (T : TournamentPackage) where
  antisymmetricClosed : T.antisymmetric
  totalClosed : T.total
  irreflexiveClosed : T.irreflexive

def TournamentClosed (T : TournamentPackage) : Prop :=
  T.antisymmetric ∧ T.total ∧ T.irreflexive

theorem tournament_closed_from_evidence (T : TournamentPackage) (E : TournamentEvidence T) :
    TournamentClosed T := by
  exact And.intro E.antisymmetricClosed (And.intro E.totalClosed E.irreflexiveClosed)

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse