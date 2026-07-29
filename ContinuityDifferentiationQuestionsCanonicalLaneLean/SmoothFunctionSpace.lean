import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsCanonicalLaneLean.DifferentiableManifold

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure SmoothFunctionSpace (M : DifferentiableManifold) where
  sourceManifold : DifferentiableManifold := M
  targetManifold : DifferentiableManifold
  smoothMaps : Set (M.carrier → targetManifold.carrier)
  compositionClosure : Prop
  identityPresent : Prop
  localRepresentation : Prop

structure SmoothFunctionEvidence {M : DifferentiableManifold}
    (S : SmoothFunctionSpace M) where
  compositionClosureClosed : S.compositionClosure
  identityPresentClosed : S.identityPresent
  localRepresentationClosed : S.localRepresentation

def SmoothFunctionSpaceClosed {M : DifferentiableManifold}
    (S : SmoothFunctionSpace M) : Prop :=
  S.compositionClosure ∧ S.identityPresent ∧ S.localRepresentation

theorem smooth_function_space_closed_from_evidence
    {M : DifferentiableManifold} (S : SmoothFunctionSpace M)
    (E : SmoothFunctionEvidence S) : SmoothFunctionSpaceClosed S := by
  exact And.intro E.compositionClosureClosed (And.intro E.identityPresentClosed E.localRepresentationClosed)

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse