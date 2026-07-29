import canonicalLaneMathlib.AdmissibleClass
import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.TournamentStructure

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure ScoreSequencePackage (T : TournamentPackage) where
  scores : T.digraph.carrier → ℕ
  scoreDef : ∀ u, scores u = Finset.card {v | T.digraph.graph u v}
  landauTheorem : Prop
  erdosGallaiCondition : Prop

structure ScoreSequenceEvidence {T : TournamentPackage} (S : ScoreSequencePackage T) where
  landauTheoremClosed : S.landauTheorem
  erdosGallaiConditionClosed : S.erdosGallaiCondition

def ScoreSequenceClosed {T : TournamentPackage} (S : ScoreSequencePackage T) : Prop :=
  S.landauTheorem ∧ S.erdosGallaiCondition

theorem score_sequence_closed_from_evidence {T : TournamentPackage}
    (S : ScoreSequencePackage T) (E : ScoreSequenceEvidence S) : ScoreSequenceClosed S := by
  exact And.intro E.landauTheoremClosed E.erdosGallaiConditionClosed

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse