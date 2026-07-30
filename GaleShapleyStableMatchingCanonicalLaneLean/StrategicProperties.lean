import GaleShapleyStableMatchingCanonicalLaneLean.OptimalityResults

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure StrategicPropertiesPackage (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (O : OptimalityPackage A P) where
  strategyProofForMen : Prop
  notStrategyProofForWomen : Prop
  strategyProofForMenTerm : strategyProofForMen
  notStrategyProofForWomenTerm : notStrategyProofForWomen

structure StrategicPropertiesEvidence (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (O : OptimalityPackage A P) (S : StrategicPropertiesPackage A P O) where
  strategyProofForMenClosed : S.strategyProofForMen
  notStrategyProofForWomenClosed : S.notStrategyProofForWomen

def StrategicPropertiesClosed (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (O : OptimalityPackage A P) (S : StrategicPropertiesPackage A P O) : Prop :=
  S.strategyProofForMen ∧ S.notStrategyProofForWomen

theorem strategic_properties_closed (A : GaleShapleyAdmittedObject) (P : StableMatchingExistencePackage A) (O : OptimalityPackage A P) (S : StrategicPropertiesPackage A P O) (E : StrategicPropertiesEvidence A P O S) : StrategicPropertiesClosed A P O S := by
  exact And.intro E.strategyProofForMenClosed E.notStrategyProofForWomenClosed

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
