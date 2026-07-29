import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DigraphAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DigraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse