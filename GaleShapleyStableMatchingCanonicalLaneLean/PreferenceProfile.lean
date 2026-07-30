import GaleShapleyStableMatchingCanonicalLaneLean.Matching

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure PreferenceList where
  agent : String
  preferences : List String

def isValidPreferenceList (p : PreferenceList) : Prop :=
  p.preferences.Nodup ∧ p.preferences.length > 0

structure PreferenceProfile where
  men : List PreferenceList
  women : List PreferenceList
  menPreferencesValid : ∀ p ∈ men, isValidPreferenceList p
  womenPreferencesValid : ∀ p ∈ women, isValidPreferenceList p
  menUnique : (men.map (λ p => p.agent)).Nodup
  womenUnique : (women.map (λ p => p.agent)).Nodup
  -- Total number of agents
  numMen : ℕ
  numWomen : ℕ
  menAgents : men.length = numMen
  womenAgents : women.length = numWomen

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse