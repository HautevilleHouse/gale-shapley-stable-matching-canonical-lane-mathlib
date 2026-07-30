import GaleShapleyStableMatchingCanonicalLaneLean.StabilityProof

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure OptimalityProofPackage where
  stability : StabilityProofPackage
  menOptimal : Prop
  womenOptimal : Prop
  optimalityProofValid : Prop

structure OptimalityProofEvidence (O : OptimalityProofPackage) where
  menOptimalClosed : O.menOptimal
  womenOptimalClosed : O.womenOptimal
  optimalityProofValidClosed : O.optimalityProofValid

def OptimalityClosed (O : OptimalityProofPackage) : Prop :=
  O.menOptimal ∧ O.womenOptimal ∧ O.optimalityProofValid

theorem optimality_closed_from_evidence (O : OptimalityProofPackage) (E : OptimalityProofEvidence O) : OptimalityClosed O :=
  And.intro E.menOptimalClosed (And.intro E.womenOptimalClosed E.optimalityProofValidClosed)

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse