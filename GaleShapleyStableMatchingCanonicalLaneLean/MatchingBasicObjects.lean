import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure ParticipantSet where
  size : ℕ
  hasTotalPreference : Prop

data Preference : Type where
  | strict (ordered : List ℕ) : Preference
  | weak (ordered : List ℕ) : Preference

structure MatchingInstance where
  men : ParticipantSet
  women : ParticipantSet
  menPref : ℕ → Preference
  womenPref : ℕ → Preference
  instanceUnique : Prop

structure StableMatchingState where
  instance : MatchingInstance
  matching : ℕ → ℕ  -- man -> woman assignment
  stableCondition : ∀ m w, (matching m = w) → (∀ m', instance.menPref m' w = instance.menPref m w → m' = m) ∨ (∀ w', instance.womenPref w m = instance.womenPref w' m → w' = w)
  stableConditionWitness : stableCondition

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse