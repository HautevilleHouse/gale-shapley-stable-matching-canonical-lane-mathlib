import canonicalLaneMathlib.AdmissibleClass
import GaleShapleyStableMatchingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj : GaleShapleyAdmittedObject := A.object
  obj.stableMatching

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.stableMatchingExists

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
