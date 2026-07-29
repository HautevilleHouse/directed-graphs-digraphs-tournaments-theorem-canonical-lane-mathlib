import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.KingshipPackage

/-!
# Arc Connectivity Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure ArcConnectivityPackage {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  {K : KingshipPackage D} where
  stronglyConnectedComponents : Prop
  condensationAcyclic : Prop
  mengerArcTheorem : Prop
  arcStrongConnectivity : Prop

structure ArcConnectivityEvidence {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  {K : KingshipPackage D} (A : ArcConnectivityPackage K) where
  stronglyConnectedComponentsClosed : A.stronglyConnectedComponents
  condensationAcyclicClosed : A.condensationAcyclic
  mengerArcTheoremClosed : A.mengerArcTheorem
  arcStrongConnectivityClosed : A.arcStrongConnectivity

def ArcConnectivityClosed {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  {K : KingshipPackage D} (A : ArcConnectivityPackage K) : Prop :=
  A.stronglyConnectedComponents ∧ A.condensationAcyclic ∧
  A.mengerArcTheorem ∧ A.arcStrongConnectivity

theorem arc_connectivity_closed_from_evidence
  {V : VertexSetPackage} {D : DigraphOrientationPackage V}
  {K : KingshipPackage D} (A : ArcConnectivityPackage K)
  (E : ArcConnectivityEvidence A) : ArcConnectivityClosed A := by
  exact And.intro E.stronglyConnectedComponentsClosed
    (And.intro E.condensationAcyclicClosed
      (And.intro E.mengerArcTheoremClosed E.arcStrongConnectivityClosed))

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse