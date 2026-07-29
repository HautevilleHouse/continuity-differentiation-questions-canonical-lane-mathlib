import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure TaylorExpansionPackage where
  basePoint : ℝ
  functionDefined : ℝ → ℝ
  derivativesExist : Prop
  taylorPolynomial : ℕ → ℝ → ℝ
  remainderTerm : ℕ → ℝ → ℝ
  expansionFormula : Prop
  derivativesExistTerm : derivativesExist
  expansionFormulaTerm : expansionFormula

structure TaylorExpansionEvidence (T : TaylorExpansionPackage) where
  derivativesExistClosed : T.derivativesExist
  expansionFormulaClosed : T.expansionFormula

def TaylorExpansionClosed (T : TaylorExpansionPackage) : Prop :=
  T.derivativesExist ∧ T.expansionFormula

theorem taylor_expansion_closed_from_evidence (T : TaylorExpansionPackage)
    (E : TaylorExpansionEvidence T) : TaylorExpansionClosed T := by
  exact And.intro E.derivativesExistClosed E.expansionFormulaClosed

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse