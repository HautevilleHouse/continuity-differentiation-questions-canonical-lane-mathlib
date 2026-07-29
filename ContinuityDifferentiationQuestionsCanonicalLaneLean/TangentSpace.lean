import ContinuityDifferentiationQuestionsCanonicalLaneLean.DifferentiableManifold

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure TangentSpacePackage {P : DifferentiableStructurePackage} where
  tangentBundle : Type w
  projection : tangentBundle → P.manifold
  vectorSpaceStructure : Prop
  smoothStructure : Prop
  derivativeMap : Type x

def TangentSpaceClosed {P : DifferentiableStructurePackage} (T : TangentSpacePackage P) : Prop :=
  T.vectorSpaceStructure ∧ T.smoothStructure

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse
