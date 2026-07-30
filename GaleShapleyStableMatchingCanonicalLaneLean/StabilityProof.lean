import GaleShapleyStableMatchingCanonicalLaneLean.GaleShapleyAlgorithm

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure StabilityProofPackage where
  algorithm : AlgorithmPackage
  matchingIsStable : Prop
  stabilityProofValid : Prop

structure StabilityProofEvidence (S : StabilityProofPackage) where
  matchingIsStableClosed : S.matchingIsStable
  stabilityProofValidClosed : S.stabilityProofValid

def StabilityProofClosed (S : StabilityProofPackage) : Prop :=
  S.matchingIsStable ∧ S.stabilityProofValid

theorem stability_proof_closed_from_evidence (S : StabilityProofPackage) (E : StabilityProofEvidence S) : StabilityProofClosed S :=
  And.intro E.matchingIsStableClosed E.stabilityProofValidClosed

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse