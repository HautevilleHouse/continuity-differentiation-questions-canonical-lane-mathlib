import ContinuityDifferentiationQuestionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferentiationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse
