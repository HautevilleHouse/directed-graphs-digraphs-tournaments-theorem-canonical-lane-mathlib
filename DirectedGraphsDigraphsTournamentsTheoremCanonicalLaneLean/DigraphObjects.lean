import HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DigraphSpace where
  carrier : Type
  vertexSet : Set carrier
  edgeRelation : carrier → carrier → Prop

structure TournamentObject where
  digraph : DigraphSpace
  finiteDigraph : Prop
  completeOrientation : Prop
  tournamentProperty : ∀ (a b : digraph.carrier), a ≠ b → (digraph.edgeRelation a b) XOR (digraph.edgeRelation b a)
  conclusion : tournamentProperty

def DigraphWitnessClosed (O : TournamentObject) : Prop :=
  O.tournamentProperty

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse