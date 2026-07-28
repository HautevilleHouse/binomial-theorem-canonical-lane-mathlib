import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Pascal Identity and Binomial Coefficient Properties
-/

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure BinomialCoefficientPackage where
  pascalIdentity : ∀ n k : ℕ, Nat.choose n k = Nat.choose (n - 1) k + Nat.choose (n - 1) (k - 1)
  chooseZero : ∀ n : ℕ, Nat.choose n 0 = 1
  chooseSelf : ∀ n : ℕ, Nat.choose n n = 1
  symmetry : ∀ n k : ℕ, Nat.choose n k = Nat.choose n (n - k)

structure BinomialCoefficientEvidence (P : BinomialCoefficientPackage) where
  pascalIdentityClosed : P.pascalIdentity
  chooseZeroClosed : P.chooseZero
  chooseSelfClosed : P.chooseSelf
  symmetryClosed : P.symmetry

def BinomialCoefficientClosed (P : BinomialCoefficientPackage) : Prop :=
  P.pascalIdentity ∧ P.chooseZero ∧ P.chooseSelf ∧ P.symmetry

theorem binomial_coefficient_closed_from_evidence
    (P : BinomialCoefficientPackage) (E : BinomialCoefficientEvidence P) :
    BinomialCoefficientClosed P := by
  exact And.intro E.pascalIdentityClosed
    (And.intro E.chooseZeroClosed
      (And.intro E.chooseSelfClosed E.symmetryClosed))

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse
