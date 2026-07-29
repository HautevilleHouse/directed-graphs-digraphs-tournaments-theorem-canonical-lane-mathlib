import DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.PhasesPackage

/-!
# Reducibility Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

structure ReducibilityPackage {V : VertexSetPackage} {T : TournamentOrientationPackage V}
  (P : PhasesPackage T) where
  reducibleDecomposition : Prop
  indecomposableKernelClassified : Prop
  cyclicDecomposition : Prop
  transitiveReductionComputed : Prop

structure ReducibilityEvidence {V : VertexSetPackage} {T : TournamentOrientationPackage V}
  {P : PhasesPackage T} (R : ReducibilityPackage P) where
  reducibleDecompositionClosed : R.reducibleDecomposition
  indecomposableKernelClassifiedClosed : R.indecomposableKernelClassified
  cyclicDecompositionClosed : R.cyclicDecomposition
  transitiveReductionComputedClosed : R.transitiveReductionComputed

def ReducibilityClosed {V : VertexSetPackage} {T : TournamentOrientationPackage V}
  {P : PhasesPackage T} (R : ReducibilityPackage P) : Prop :=
  R.reducibleDecomposition ∧ R.indecomposableKernelClassified ∧
  R.cyclicDecomposition ∧ R.transitiveReductionComputed

theorem reducibility_closed_from_evidence
  {V : VertexSetPackage} {T : TournamentOrientationPackage V}
  {P : PhasesPackage T} (R : ReducibilityPackage P)
  (E : ReducibilityEvidence R) : ReducibilityClosed R := by
  exact And.intro E.reducibleDecompositionClosed
    (And.intro E.indecomposableKernelClassifiedClosed
      (And.intro E.cyclicDecompositionClosed E.transitiveReductionComputedClosed))

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse