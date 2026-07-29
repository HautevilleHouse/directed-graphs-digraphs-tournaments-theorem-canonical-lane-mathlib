import HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure KingsProblemPackage (A : AdmissibleClass) where
  kingVertex : A.object.digraph.carrier
  kingDistanceTwo : ∀ (v : A.object.digraph.carrier), v ≠ kingVertex →
    A.object.digraph.edgeRelation kingVertex v ∨
    ∃ (w : A.object.digraph.carrier), A.object.digraph.edgeRelation kingVertex w ∧ A.object.digraph.edgeRelation w v
  kingDistanceTwoClosed : kingDistanceTwo

def KingsProblemClosed {A : AdmissibleClass} (K : KingsProblemPackage A) : Prop :=
  K.kingDistanceTwo

theorem kings_problem_closed_from_evidence {A : AdmissibleClass}
    (K : KingsProblemPackage A) : KingsProblemClosed K := by
  exact K.kingDistanceTwoClosed

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse