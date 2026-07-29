import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure InverseFunctionTheoremPackage where
  manifold : Type u
  topologyManifold : TopologicalSpace manifold
  function : manifold → manifold
  derivativeInvertible : Prop
  localInverseExists : Prop
  inverseDifferentiable : Prop
  derivativeInvertibleTerm : derivativeInvertible
  localInverseExistsTerm : localInverseExists
  inverseDifferentiableTerm : inverseDifferentiable

structure InverseFunctionTheoremEvidence (I : InverseFunctionTheoremPackage) where
  derivativeInvertibleClosed : I.derivativeInvertible
  localInverseExistsClosed : I.localInverseExists
  inverseDifferentiableClosed : I.inverseDifferentiable

def InverseFunctionTheoremClosed (I : InverseFunctionTheoremPackage) : Prop :=
  I.derivativeInvertible ∧ I.localInverseExists ∧ I.inverseDifferentiable

theorem inverse_function_theorem_closed_from_evidence
    (I : InverseFunctionTheoremPackage) (E : InverseFunctionTheoremEvidence I) :
    InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeInvertibleClosed
    (And.intro E.localInverseExistsClosed E.inverseDifferentiableClosed)

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse