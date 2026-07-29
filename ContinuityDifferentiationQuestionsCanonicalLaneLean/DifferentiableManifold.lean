import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsCanonicalLaneLean

structure DifferentiableManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothAtlas : Set (Set carrier)
  smoothCompatible : Prop
  maximalAtlas : Prop
  dimension : Nat
  dimensionThree : dimension = 3

structure DifferentiableManifoldEvidence (M : DifferentiableManifold) where
  smoothCompatibleClosed : M.smoothCompatible
  maximalAtlasClosed : M.maximalAtlas

def DifferentiableManifoldClosed (M : DifferentiableManifold) : Prop :=
  M.smoothCompatible ∧ M.maximalAtlas

theorem differentiable_manifold_closed_from_evidence (M : DifferentiableManifold)
    (E : DifferentiableManifoldEvidence M) : DifferentiableManifoldClosed M := by
  exact And.intro E.smoothCompatibleClosed E.maximalAtlasClosed

end ContinuityDifferentiationQuestionsCanonicalLaneLean
end HautevilleHouse