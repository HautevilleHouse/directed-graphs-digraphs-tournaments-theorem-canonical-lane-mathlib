import HautevilleHouse.DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DigraphWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectedGraphsDigraphsTournamentsTheoremCanonicalLaneLean
end HautevilleHouse