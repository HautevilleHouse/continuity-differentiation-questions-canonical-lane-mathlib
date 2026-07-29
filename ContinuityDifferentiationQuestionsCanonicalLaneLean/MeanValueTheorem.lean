import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure MeanValueTheoremPackage where
  interval : Type u
  functionOnInterval : interval → ℝ
  differentiableCondition : Prop
  continuousCondition : Prop
  conclusionPoint : interval
  derivativeMatchesSlope : Prop
  differentiableConditionTerm : differentiableCondition
  continuousConditionTerm : continuousCondition
  conclusionPointTerm : conclusionPoint
  derivativeMatchesSlopeTerm : derivativeMatchesSlope

structure MeanValueTheoremEvidence (M : MeanValueTheoremPackage) where
  differentiableClosed : M.differentiableCondition
  continuousClosed : M.continuousCondition
  conclusionPointClosed : M.conclusionPoint
  derivativeMatchesSlopeClosed : M.derivativeMatchesSlope

def MeanValueTheoremClosed (M : MeanValueTheoremPackage) : Prop :=
  M.differentiableCondition ∧ M.continuousCondition ∧ M.conclusionPoint ∧ M.derivativeMatchesSlope

theorem mean_value_theorem_closed_from_evidence (M : MeanValueTheoremPackage)
    (E : MeanValueTheoremEvidence M) : MeanValueTheoremClosed M := by
  exact And.intro E.differentiableClosed
    (And.intro E.continuousClosed
      (And.intro E.conclusionPointClosed E.derivativeMatchesSlopeClosed))

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse