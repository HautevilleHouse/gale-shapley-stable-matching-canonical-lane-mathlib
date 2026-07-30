import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaleShapleyStableMatchingCanonicalLaneLean

structure GaleShapleyAdmittedObject where
  menSize : Nat
  womenSize : Nat
  menPreferences : Vector (Vector Nat) menSize
  womenPreferences : Vector (Vector Nat) womenSize
  stableMatching : Prop
  stableMatchingExists : stableMatching

end GaleShapleyStableMatchingCanonicalLaneLean
end HautevilleHouse
