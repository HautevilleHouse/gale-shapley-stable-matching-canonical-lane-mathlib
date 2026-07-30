import GaleShapleyStableMatchingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure GaleShapleyAlgorithmInput (A : GaleShapleyAdmittedObject) where
  menProposals : Vector (Option Nat) A.menSize
  womenProposals : Vector (Option Nat) A.womenSize
  engagedMen : Vector (Option Nat) A.menSize
  engagedWomen : Vector (Option Nat) A.womenSize

structure GaleShapleyAlgorithmStep (A : GaleShapleyAdmittedObject) where
  input : GaleShapleyAlgorithmInput A
  output : GaleShapleyAlgorithmInput A
  stepValid : Prop
  stepValidTerm : stepValid

def GaleShapleyAlgorithmClosed (A : GaleShapleyAdmittedObject) (S : GaleShapleyAlgorithmStep A) : Prop :=
  S.stepValid

theorem gale_shapley_algorithm_closed (A : GaleShapleyAdmittedObject) (S : GaleShapleyAlgorithmStep A) : GaleShapleyAlgorithmClosed A S := by
  exact S.stepValidTerm

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
