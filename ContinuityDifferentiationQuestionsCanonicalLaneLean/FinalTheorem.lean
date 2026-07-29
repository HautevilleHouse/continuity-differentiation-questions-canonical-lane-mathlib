import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityDifferentiationQuestionsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ContinuityDifferentiationQuestionsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

def ConstrainedContinuityDifferentiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuity_differentiation_endgame (A : AdmissibleClass) :
    ConstrainedContinuityDifferentiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse