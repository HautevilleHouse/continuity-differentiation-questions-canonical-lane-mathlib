import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure DifferentiabilityPackage where
  manifold : Type u
  topologyManifold : TopologicalSpace manifold
  smoothStructure : Type v
  derivativeOperator : Type w
  differentiableFunction : Prop
  derivativeLinear : Prop
  chainRule : Prop
  differentiableFunctionTerm : differentiableFunction
  derivativeLinearTerm : derivativeLinear
  chainRuleTerm : chainRule

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  differentiableClosed : D.differentiableFunction
  derivativeLinearClosed : D.derivativeLinear
  chainRuleClosed : D.chainRule

def DifferentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.differentiableFunction ∧ D.derivativeLinear ∧ D.chainRule

theorem differentiability_closed_from_evidence (D : DifferentiabilityPackage)
    (E : DifferentiabilityEvidence D) : DifferentiabilityClosed D := by
  exact And.intro E.differentiableClosed
    (And.intro E.derivativeLinearClosed E.chainRuleClosed)

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse