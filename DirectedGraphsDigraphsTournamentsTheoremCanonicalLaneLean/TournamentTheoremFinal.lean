import HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.GateLemmasDigraph

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

def ConstrainedDigraphClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_digraph_endgame (A : AdmissibleClass) :
    ConstrainedDigraphClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse