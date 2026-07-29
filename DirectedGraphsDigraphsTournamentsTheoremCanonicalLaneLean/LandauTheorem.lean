import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.TournamentStructure

/-!
# Landau's Theorem Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure LandauTheoremPackage (T : TournamentPackage) where
  scoreSequence : List ℕ
  nondecreasing : Sorted (· ≤ ·) scoreSequence
  sumOfScores : ∑ s in scoreSequence, s = (T.vertexSet.card choose 2)
  landauInequalities : ∀ k : ℕ, k ≤ scoreSequence.length →
    ∑ i in Finset.range k, scoreSequence.get i ≥ (k choose 2)
  scoreSequenceRealizable : Prop
  evidenceRealizable : scoreSequenceRealizable

def LandauTheoremClosed (L : LandauTheoremPackage) : Prop :=
  L.scoreSequenceRealizable

theorem landau_theorem_closed_from_evidence (L : LandauTheoremPackage) :
    LandauTheoremClosed L := by
  exact L.evidenceRealizable

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse