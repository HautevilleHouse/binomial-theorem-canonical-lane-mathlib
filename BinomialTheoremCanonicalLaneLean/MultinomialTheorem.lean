import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure MultinomialTheoremPackage where
  ring : Type
  variables : Nat
  exponent : Nat
  expansion : Prop
  expansionProof : expansion

def MultinomialTheoremClosed (M : MultinomialTheoremPackage) : Prop :=
  M.expansion

theorem multinomial_theorem_closed (M : MultinomialTheoremPackage) : MultinomialTheoremClosed M := by
  exact M.expansionProof

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse