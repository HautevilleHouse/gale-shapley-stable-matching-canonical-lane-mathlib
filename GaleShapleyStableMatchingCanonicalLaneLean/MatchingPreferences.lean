import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure ParticipantSet where
  proposerType : Type u
  acceptorType : Type v
  proposerCount : Nat
  acceptorCount : Nat
  proposerSet : List proposerType
  acceptorSet : List acceptorType

definition StrictPreferenceOrder (agent : Type) : Type := agent → agent → Prop

structure PreferenceProfile (P : ParticipantSet) where
  proposerPreferences : P.proposerType → StrictPreferenceOrder P.acceptorType
  acceptorPreferences : P.acceptorType → StrictPreferenceOrder P.proposerType
  proposerPrefsDefined : ∀ p, (∀ a a', P.proposerPreferences p a a') → True
  acceptorPrefsDefined : ∀ a, (∀ p p', P.acceptorPreferences a p p') → True

structure Matching (P : ParticipantSet) where
  proposerMatch : P.proposerType → Option P.acceptorType
  acceptorMatch : P.acceptorType → Option P.proposerType
  matchConsistency : ∀ (p : P.proposerType) (a : P.acceptorType),
    (proposerMatch p = some a) ↔ (acceptorMatch a = some p)
  proposerMatchedOnce : ∀ p, (∃ a, proposerMatch p = some a) ∨ proposerMatch p = none
  acceptorMatchedOnce : ∀ a, (∃ p, acceptorMatch a = some p) ∨ acceptorMatch a = none

def MatchingRationality (P : ParticipantSet) (μ : Matching P) : Prop :=
  True

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
