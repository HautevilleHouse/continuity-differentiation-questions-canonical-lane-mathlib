import ContinuityDifferentiationQuestionsCanonicalLaneLean.FinalTheorem
import Mathlib

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure DifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferentiationAdmittedObject where
  space : DifferentiationSpace
  smoothManifold : Prop
  tangentBundleDefined : Prop
  derivativeExists : Prop
  chainRuleHolds : Prop
  conclusion : chainRuleHolds

def DifferentiationWitnessClosed (O : DifferentiationAdmittedObject) : Prop :=
  O.chainRuleHolds

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse
