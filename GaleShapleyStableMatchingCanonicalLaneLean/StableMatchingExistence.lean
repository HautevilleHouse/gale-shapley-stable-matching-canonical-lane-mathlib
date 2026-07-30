import GaleShapleyStableMatchingCanonicalLaneLean.GaleShapleyAlgorithm

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure StableMatchingExistencePackage (A : GaleShapleyAdmittedObject) where
  algorithm : GaleShapleyAlgorithmStep A
  convergence : Prop
  stability : Prop
  convergenceTerm : convergence
  stabilityTerm : stability

structure StableMatchingExistenceEvidence (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) where
  convergenceClosed : P.convergence
  stabilityClosed : P.stability

def StableMatchingExistenceClosed (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) : Prop :=
  P.convergence ∧ P.stability

theorem stable_matching_existence_closed (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (E : StableMatchingExistenceEvidence A P) : StableMatchingExistenceClosed A P := by
  exact And.intro E.convergenceClosed E.stabilityClosed

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
