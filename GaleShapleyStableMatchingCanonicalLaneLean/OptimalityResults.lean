import GaleShapleyStableMatchingCanonicalLaneLean.StableMatchingExistence

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure OptimalityPackage (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) where
  manOptimal : Prop
  womanOptimal : Prop
  latticeStructure : Prop
  manOptimalTerm : manOptimal
  womanOptimalTerm : womanOptimal
  latticeStructureTerm : latticeStructure

structure OptimalityEvidence (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (O : OptimalityPackage A P) where
  manOptimalClosed : O.manOptimal
  womanOptimalClosed : O.womanOptimal
  latticeStructureClosed : O.latticeStructure

def OptimalityClosed (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (O : OptimalityPackage A P) : Prop :=
  O.manOptimal ∧ O.womanOptimal ∧ O.latticeStructure

theorem optimality_closed (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (O : OptimalityPackage A P) (E : OptimalityEvidence A P O) : OptimalityClosed A P O := by
  exact And.intro E.manOptimalClosed (And.intro E.womanOptimalClosed E.latticeStructureClosed)

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
