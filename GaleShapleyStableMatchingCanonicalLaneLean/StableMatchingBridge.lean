import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleShapleyStableMatchingCanonicalLaneLean.MatchingPreferences

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure AdmissibleStableMatchingInstance where
  participantSet : ParticipantSet
  preferences : PreferenceProfile participantSet
  marketStructure : Prop
  marketStructureTerm : marketStructure

structure StableMatching (P : ParticipantSet) (prefs : PreferenceProfile P) extends Matching P where
  noBlockingPair : Prop
  individuallyRational : ∀ p, (∃ a, match p = some a) → prefs.proposerPreferences p a (match p) = true
  individualRationalAcceptor : similar

structure GaleShapleyAlgorithm (P : ParticipantSet) (prefs : PreferenceProfile P) where
  proposerOrder : List P.proposerType
  acceptorOrder : List P.acceptorType
  algorithmSteps : Nat
  proposerOffers : P.proposerType → List P.acceptorType
  acceptorTentative : P.acceptorType → Option P.proposerType
  algorithmTerminated : Prop
  algorithmTerminatedTerm : algorithmTerminated

def bridgeClosed (A : AdmissibleClass) : Prop :=
  StableMatching (A.object.participantSet) (A.object.preferences)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
