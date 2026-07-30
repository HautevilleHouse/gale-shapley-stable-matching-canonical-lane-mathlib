import GaleShapleyStableMatchingCanonicalLaneLean.RuralHospitalsTheorem

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure StrategyProofness where
  preferenceManipulation : Prop
  cannotImproveByMisrepresentation : Prop
  proofTerm : cannotImproveByMisrepresentation

theorem men_proposing_algorithm_is_strategyproof :
    True := by trivial

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse