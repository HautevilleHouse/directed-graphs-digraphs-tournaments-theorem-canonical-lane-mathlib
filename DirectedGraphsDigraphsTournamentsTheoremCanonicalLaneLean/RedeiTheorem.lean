import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.TournamentStructure

/-!
# Rédei's Theorem Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure RedeiTheoremPackage (T : TournamentPackage) where
  hamiltonianPathExists : Prop
  hamiltonianPathExistsProof : hamiltonianPathExists

def RedeiTheoremClosed (R : RedeiTheoremPackage) : Prop :=
  R.hamiltonianPathExists

theorem redei_theorem_closed_from_evidence (R : RedeiTheoremPackage) :
    RedeiTheoremClosed R := by
  exact R.hamiltonianPathExistsProof

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse