import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleShapleyStableMatchingCanonicalLaneLean.StableMatchingBridge

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

def ConstrainedGaleShapleyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gale_shapley_endgame (A : AdmissibleClass) : ConstrainedGaleShapleyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
