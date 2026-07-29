import canonicalLaneMathlib.ContinuityDifferentiationCore

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure DifferentiationPackage (M : DifferentiationManifold) where
  derivativeOperator : Type
  chainRule : Prop
  linearity : Prop
  productRule : Prop

define DifferentiationClosed (M : DifferentiationManifold) (P : DifferentiationPackage M) : Prop :=
  P.chainRule ∧ P.linearity ∧ P.productRule

theorem differentiation_closed_from_evidence
    (M : DifferentiationManifold) (P : DifferentiationPackage M)
    (chainRuleClosed : P.chainRule) (linearityClosed : P.linearity)
    (productRuleClosed : P.productRule) : DifferentiationClosed M P := by
  exact And.intro chainRuleClosed (And.intro linearityClosed productRuleClosed)

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse