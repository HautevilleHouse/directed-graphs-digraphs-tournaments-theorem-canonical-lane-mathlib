import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.TournamentLandauBridge

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse