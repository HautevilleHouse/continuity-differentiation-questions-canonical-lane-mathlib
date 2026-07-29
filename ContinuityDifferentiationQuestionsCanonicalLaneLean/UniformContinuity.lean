import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure UniformContinuityPackage where
  domain : Type u
  codomain : Type v
  topologyDomain : TopologicalSpace domain
  topologyCodomain : TopologicalSpace codomain
  functionSet : domain → codomain
  uniformContinuityCondition : Prop
  epsilonDeltaCondition : Prop
  uniformContinuityConditionTerm : uniformContinuityCondition
  epsilonDeltaConditionTerm : epsilonDeltaCondition

structure UniformContinuityEvidence (U : UniformContinuityPackage) where
  uniformContinuityClosed : U.uniformContinuityCondition
  epsilonDeltaClosed : U.epsilonDeltaCondition

def UniformContinuityClosed (U : UniformContinuityPackage) : Prop :=
  U.uniformContinuityCondition ∧ U.epsilonDeltaCondition

theorem uniform_continuity_closed_from_evidence (U : UniformContinuityPackage)
    (E : UniformContinuityEvidence U) : UniformContinuityClosed U := by
  exact And.intro E.uniformContinuityClosed E.epsilonDeltaClosed

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse