import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleShapleyStableMatchingCanonicalLaneLean.GaleShapleyStableMatching

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure ExistenceProof (M W : Type) (I : GaleShapleyInstance M W) where
  matching : StableMatching M W I

theorem stable_matching_exists (M W : Type) (I : GaleShapleyInstance M W) :
  ∃ (S : StableMatching M W I), True := by
  refine ⟨?_, trivial⟩
  sorry

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse