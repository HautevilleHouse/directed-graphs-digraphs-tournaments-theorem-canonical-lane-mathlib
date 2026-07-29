import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.RedeiTheorem

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure ErdosMoserPackage {K : KingPigeonholePackage}
    {L : LandauTheoremPackage K} {R : RedeiTheoremPackage K L} where
  tournamentSize : Nat
  transitiveSubtournamentBound : Prop
  erdosMoserConjecture : Prop
  boundSharp : Prop

structure ErdosMoserEvidence {K : KingPigeonholePackage}
    {L : LandauTheoremPackage K} {R : RedeiTheoremPackage K L}
    (E : ErdosMoserPackage K L R) where
  transitiveSubtournamentBoundClosed : E.transitiveSubtournamentBound
  erdosMoserConjectureClosed : E.erdosMoserConjecture
  boundSharpClosed : E.boundSharp

def ErdosMoserClosed {K : KingPigeonholePackage}
    {L : LandauTheoremPackage K} {R : RedeiTheoremPackage K L}
    (E : ErdosMoserPackage K L R) : Prop :=
  E.transitiveSubtournamentBound ∧ E.erdosMoserConjecture ∧ E.boundSharp

theorem erdos_moser_closed_from_evidence {K : KingPigeonholePackage}
    {L : LandauTheoremPackage K} {R : RedeiTheoremPackage K L}
    (Epkg : ErdosMoserPackage K L R) (Ev : ErdosMoserEvidence Epkg) :
    ErdosMoserClosed Epkg := by
  exact And.intro Ev.transitiveSubtournamentBoundClosed
    (And.intro Ev.erdosMoserConjectureClosed Ev.boundSharpClosed)

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse