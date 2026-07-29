import HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure LandauTheoremPackage (A : AdmissibleClass) where
  scoreSequence : List Nat
  scoreVectorCondition : Prop
  tournamentRealization : Prop
  scoreVectorConditionClosed : scoreVectorCondition
  tournamentRealizationClosed : tournamentRealization

def LandauTheoremClosed {A : AdmissibleClass} (L : LandauTheoremPackage A) : Prop :=
  L.scoreVectorCondition ∧ L.tournamentRealization

theorem landau_theorem_closed_from_evidence {A : AdmissibleClass}
    (L : LandauTheoremPackage A) : LandauTheoremClosed L := by
  exact And.intro L.scoreVectorConditionClosed L.tournamentRealizationClosed

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse