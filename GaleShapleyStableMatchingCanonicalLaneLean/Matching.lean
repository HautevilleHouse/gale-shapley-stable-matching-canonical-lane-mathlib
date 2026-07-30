import GaleShapleyStableMatchingCanonicalLaneLean.PreferenceProfile

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure Matching where
  assignment : String → Option String  -- man -> woman or woman -> man
  isInjective : ∀ (a b : String) (x : String), assignment a = some x → assignment b = some x → a = b
  isComplete : ∀ (x : String), (∃ m : String, assignment m = some x) ∨ (∃ w : String, assignment w = some x)

def isStableMatching (profile : PreferenceProfile) (m : Matching) : Prop :=
  -- No blocking pair: there is no man-woman pair (m,w) not matched to each other
  -- such that both prefer each other to their current partner
  ∀ (man : String) (woman : String),
    man ∈ (profile.men.map (λ p => p.agent)) →
    woman ∈ (profile.women.map (λ p => p.agent)) →
    (m.assignment man ≠ some woman) ∧ (m.assignment woman ≠ some man) →
    -- if man prefers woman over his current match and woman prefers man over her current match, then unstable
    ¬ (prefers profile man woman (m.assignment man) ∧ prefers profile woman man (m.assignment woman))

def prefers (profile : PreferenceProfile) (agent1 : String) (agent2 : String) (currentPartner : Option String) : Prop :=
  match currentPartner with
  | none => True
  | some p => 
    let list := if agent1 ∈ (profile.men.map (λ x => x.agent)) then 
                  (profile.men.filter (λ pl => pl.agent = agent1)).head.preferences
                else 
                  (profile.women.filter (λ pl => pl.agent = agent1)).head.preferences
    in (list.indexOf agent2) < (list.indexOf p)

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse