import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure DifferentiationOperator where
  source : Type u
  target : Type v
  normedSource : NormedAddCommGroup source
  normedTarget : NormedAddCommGroup target
  derivativeMap : source → (source →L[ℝ] target)
  linearity : Prop
  chainRule : Prop
  existenceOfDerivative : Prop

structure DifferentiationEvidence (D : DifferentiationOperator) where
  linearityClosed : D.linearity
  chainRuleClosed : D.chainRule
  existenceOfDerivativeClosed : D.existenceOfDerivative

def DifferentiationClosed (D : DifferentiationOperator) : Prop :=
  D.linearity ∧ D.chainRule ∧ D.existenceOfDerivative

theorem differentiation_closed_from_evidence (D : DifferentiationOperator)
    (E : DifferentiationEvidence D) : DifferentiationClosed D := by
  exact And.intro E.linearityClosed (And.intro E.chainRuleClosed E.existenceOfDerivativeClosed)

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse