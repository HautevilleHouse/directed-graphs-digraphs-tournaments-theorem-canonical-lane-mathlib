import canonicalLaneMathlib.AdmissibleClass
import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.TournamentStructure

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure KingTheoremPackage (T : TournamentPackage) where
  kingExists : ∃ (u : T.digraph.carrier),
    ∀ (v : T.digraph.carrier), v ≠ u →
      (T.digraph.graph u v) ∨ (∃ (w : T.digraph.carrier), T.digraph.graph u w ∧ T.digraph.graph w v)
  vertexMoran : Prop
  secondKingExists : Prop
  atMostThreeKings : Prop

structure KingTheoremEvidence {T : TournamentPackage} (K : KingTheoremPackage T) where
  kingExistsClosed : K.kingExists
  vertexMoranClosed : K.vertexMoran
  secondKingExistsClosed : K.secondKingExists
  atMostThreeKingsClosed : K.atMostThreeKings

def KingTheoremClosed {T : TournamentPackage} (K : KingTheoremPackage T) : Prop :=
  K.kingExists ∧ K.vertexMoran ∧ K.secondKingExists ∧ K.atMostThreeKings

theorem king_theorem_closed_from_evidence {T : TournamentPackage}
    (K : KingTheoremPackage T) (E : KingTheoremEvidence K) : KingTheoremClosed K := by
  exact And.intro E.kingExistsClosed
    (And.intro E.vertexMoranClosed
      (And.intro E.secondKingExistsClosed E.atMostThreeKingsClosed))

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse