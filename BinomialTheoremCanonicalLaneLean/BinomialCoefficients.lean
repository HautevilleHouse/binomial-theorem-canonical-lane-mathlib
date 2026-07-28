import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Nat.Choose.Basic

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure BinomialCoefficientPackage where
  n : ℕ
  k : ℕ
  value : ℕ
  wellDefined : value = Nat.choose n k
  recursiveRelation : (k > 0) → (Nat.choose n k = Nat.choose (n-1) (k-1) + Nat.choose (n-1) k)

structure BinomialCoefficientEvidence (B : BinomialCoefficientPackage) where
  wellDefinedClosed : B.wellDefined
  recursiveRelationClosed : (h : B.k > 0) → B.recursiveRelation h

def BinomialCoefficientClosed (B : BinomialCoefficientPackage) : Prop :=
  B.wellDefined ∧ (∀ h : B.k > 0, B.recursiveRelation h)

theorem binomial_coefficient_closed_from_evidence (B : BinomialCoefficientPackage) (E : BinomialCoefficientEvidence B) : BinomialCoefficientClosed B := by
  exact And.intro E.wellDefinedClosed (fun h => E.recursiveRelationClosed h)

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse