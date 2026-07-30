import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure GaleShapleyInstance (M W : Type) where
  men : M
  women : W
  prefMen : M → W → Nat
  prefWomen : W → M → Nat
  menPreferencesTotal : ∀ m1 m2 : M, prefMen m1 = prefMen m2 → m1 = m2
  womenPreferencesTotal : ∀ w1 w2 : W, prefWomen w1 = prefWomen w2 → w1 = w2

structure StableMatching (M W : Type) (I : GaleShapleyInstance M W) where
  matchMen : M → Option W
  matchWomen : W → Option M
  noBlockingPairs : ∀ m : M, ∀ w : W, 
    (matchMen m = some w) ∨ 
    (∃ m' : M, matchWomen w = some m' ∧ I.prefMen m' w > I.prefMen m w) ∨ 
    (∃ w' : W, matchMen m = some w' ∧ I.prefWomen w' m > I.prefWomen w m)

def GaleShapleyAdmittedObject (M W : Type) (I : GaleShapleyInstance M W) : Prop :=
  ∃ (S : StableMatching M W I), True

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse