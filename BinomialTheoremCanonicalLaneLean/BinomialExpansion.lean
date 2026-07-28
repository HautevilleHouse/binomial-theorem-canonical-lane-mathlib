import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure NewtonBinomialPackage where
  ring : Type
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  one : ring
  characteristicZero : Prop
  binomialTheorem : ∀ (x y : ring) (n : Nat), (x + y) ^ n = ∑ k in Finset.range (n+1), (Nat.choose n k) • (x ^ k * y ^ (n - k))
  binomialProof : binomialTheorem

structure NewtonBinomialCertificate (P : NewtonBinomialPackage) where
  expansionFormula : Prop
  expansionProof : expansionFormula
  ringClosed : P.characteristicZero ∧ P.binomialTheorem

def NewtonBinomialClosed (P : NewtonBinomialPackage) : Prop :=
  P.characteristicZero ∧ P.binomialTheorem

theorem newton_binomial_closed (P : NewtonBinomialPackage) (C : NewtonBinomialCertificate P) :
    NewtonBinomialClosed P := by
  exact And.intro P.characteristicZero P.binomialProof

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse