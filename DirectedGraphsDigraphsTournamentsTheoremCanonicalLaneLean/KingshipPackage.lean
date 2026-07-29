import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.ScoreSequencePackage

/-!
# Kingship Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure KingshipPackage {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  (S : ScoreSequencePackage D) where
  kingVertexExists : Prop
  landauTheorem : Prop
  moorePathLength : Prop
  universalKernel : Prop

structure KingshipEvidence {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  {S : ScoreSequencePackage D} (K : KingshipPackage S) where
  kingVertexExistsClosed : K.kingVertexExists
  landauTheoremClosed : K.landauTheorem
  moorePathLengthClosed : K.moorePathLength
  universalKernelClosed : K.universalKernel

def KingshipClosed {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  {S : ScoreSequencePackage D} (K : KingshipPackage S) : Prop :=
  K.kingVertexExists ∧ K.landauTheorem ∧
  K.moorePathLength ∧ K.universalKernel

theorem kingship_closed_from_evidence
  {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  {S : ScoreSequencePackage D} (K : KingshipPackage S)
  (E : KingshipEvidence K) : KingshipClosed K := by
  exact And.intro E.kingVertexExistsClosed
    (And.intro E.landauTheoremClosed
      (And.intro E.moorePathLengthClosed E.universalKernelClosed))

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse