import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure DirectedGraphSpace where
  carrier : Type
  graph : carrier → carrier → Prop

structure DirectedGraphAdmittedObject where
  space : DirectedGraphSpace
  directedComplete : Prop
  tournament : Prop
  kingChampion : carrier
  kingProperty : ∀ (v : carrier), v ≠ kingChampion → (space.graph kingChampion v) ∨ (∃ (w : carrier), space.graph kingChampion w ∧ space.graph w v)
  conclusion : kingProperty

def DirectedGraphWitnessClosed (O : DirectedGraphAdmittedObject) : Prop :=
  O.kingProperty

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse