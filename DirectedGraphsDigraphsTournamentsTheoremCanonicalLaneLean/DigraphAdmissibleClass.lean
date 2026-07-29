import HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.DigraphObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : TournamentObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DigraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse