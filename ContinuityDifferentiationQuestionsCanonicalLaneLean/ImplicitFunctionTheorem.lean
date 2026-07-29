import ContinuityDifferentiationQuestionsCanonicalLaneLean.TangentSpace

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure ImplicitFunctionPackage {P : DifferentiableStructurePackage} {T : TangentSpacePackage P} where
  smoothMap : P.manifold → P.manifold
  derivativeInvertibleAtPoint : Prop
  localDiffeomorphism : Prop
  implicitFunctionExistence : Prop

def ImplicitFunctionClosed {P : DifferentiableStructurePackage} {T : TangentSpacePackage P}
    (I : ImplicitFunctionPackage P T) : Prop :=
  I.localDiffeomorphism ∧ I.implicitFunctionExistence

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse
