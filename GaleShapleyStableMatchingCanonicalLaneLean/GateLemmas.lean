import canonicalLaneMathlib.AdmissibleClass
import GaleShapleyStableMatchingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
