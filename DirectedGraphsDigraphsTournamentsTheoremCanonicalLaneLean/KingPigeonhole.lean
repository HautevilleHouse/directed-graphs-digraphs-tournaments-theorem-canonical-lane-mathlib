import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure KingPigeonholePackage where
  tournamentSize : Nat
  kingExists : Prop
  everyPlayerBeatenByKing : Prop
  proofByPigeonhole : Prop

structure KingPigeonholeEvidence (K : KingPigeonholePackage) where
  kingExistsClosed : K.kingExists
  everyPlayerBeatenByKingClosed : K.everyPlayerBeatenByKing
  proofByPigeonholeClosed : K.proofByPigeonhole

def KingPigeonholeClosed (K : KingPigeonholePackage) : Prop :=
  K.kingExists ∧ K.everyPlayerBeatenByKing ∧ K.proofByPigeonhole

theorem king_pigeonhole_closed_from_evidence (K : KingPigeonholePackage)
    (E : KingPigeonholeEvidence K) : KingPigeonholeClosed K := by
  exact And.intro E.kingExistsClosed
    (And.intro E.everyPlayerBeatenByKingClosed E.proofByPigeonholeClosed)

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse