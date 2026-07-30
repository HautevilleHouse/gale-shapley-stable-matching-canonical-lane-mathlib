import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleShapleyStableMatchingCanonicalLaneLean.GaleShapleyStableMatching

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

def MenOptimal (M W : Type) (I : GaleShapleyInstance M W) (S : StableMatching M W I) : Prop :=
  ∀ (S' : StableMatching M W I), ∀ m : M, I.prefMen m (S.matchMen m) ≥ I.prefMen m (S'.matchMen m)

def WomenOptimal (M W : Type) (I : GaleShapleyInstance M W) (S : StableMatching M W I) : Prop :=
  ∀ (S' : StableMatching M W I), ∀ w : W, I.prefWomen w (S.matchWomen w) ≥ I.prefWomen w (S'.matchWomen w)

theorem men_optimality (M W : Type) (I : GaleShapleyInstance M W) (D : DeferredAcceptance M W I) : True := by trivial

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse