import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.TournamentGateLemmas

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

def ConstrainedTournamentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tournament_endgame (A : AdmissibleClass) :
    ConstrainedTournamentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse