import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def digraphProjection : Projection DirectedGraphEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem digraph_projection_idempotent (x : DirectedGraphEndgameState) :
    digraphProjection.toFun (digraphProjection.toFun x) = digraphProjection.toFun x := by
  exact digraphProjection.idempotent x

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse