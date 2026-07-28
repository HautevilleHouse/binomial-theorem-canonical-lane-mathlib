import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure BinomialAdmittedObject where
  carrier : Type u
  semiring : Semiring carrier
  a : carrier
  b : carrier
  n : ℕ
  expansion : (a + b) ^ n = ∑ k in Finset.range (n+1), (Nat.choose n k : carrier) * a ^ (n - k) * b ^ k

def BinomialWitnessClosed (O : BinomialAdmittedObject) : Prop :=
  O.expansion

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse
