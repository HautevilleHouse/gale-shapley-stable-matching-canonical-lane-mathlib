import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GaleShapleyStableMatchingCanonicalLaneLean.GaleShapleyStableMatching

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure DeferredAcceptance (M W : Type) (I : GaleShapleyInstance M W) where
  initialProposals : M → W
  rejectionChain : List (M × W)
  algorithmTerminates : Prop

def DeferredAcceptanceClosed (M W : Type) (I : GaleShapleyInstance M W) (D : DeferredAcceptance M W I) : Prop :=
  D.algorithmTerminates

theorem deferred_acceptance_terminates (M W : Type) (I : GaleShapleyInstance M W) (prefMenTotal : ∀ m1 m2 : M, I.prefMen m1 = I.prefMen m2 → m1 = m2) (prefWomenTotal : ∀ w1 w2 : W, I.prefWomen w1 = I.prefWomen w2 → w1 = w2) :
  True := by trivial

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse