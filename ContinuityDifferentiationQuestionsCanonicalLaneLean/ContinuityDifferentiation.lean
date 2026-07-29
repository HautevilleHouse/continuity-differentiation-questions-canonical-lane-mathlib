import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure ContinuityDifferentiationPackage where
  functionSpace : Type u
  domain : Type v
  codomain : Type w
  continuityCondition : Prop
  differentiabilityCondition : Prop
  derivativeDefined : Prop

def ContinuityDifferentiationClosed (P : ContinuityDifferentiationPackage) : Prop :=
  P.continuityCondition ∧ P.differentiabilityCondition ∧ P.derivativeDefined

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse