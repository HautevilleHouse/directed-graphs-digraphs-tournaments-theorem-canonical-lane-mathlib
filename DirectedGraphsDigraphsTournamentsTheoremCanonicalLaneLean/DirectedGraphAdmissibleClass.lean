import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure DirectedGraph where
  V : Type u
  E : V → V → Prop

structure Tournament extends DirectedGraph where
  total : ∀ u v : V, u ≠ v → (E u v) ∨ (E v u)
  antisymm : ∀ u v : V, E u v → ¬ E v u

structure DigraphAdmissibleObject where
  digraph : DirectedGraph
  isTournament : Prop
  scoreSequence : List ℕ
  transitiveClosure : Prop
  hamiltonianPath : Prop
  scoreSequenceCondition : Prop
  conclusion : hamiltonianPath

def DigraphWitnessClosed (O : DigraphAdmissibleObject) : Prop :=
  O.hamiltonianPath

end HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse