import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

def ConstrainedBinomialTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_binomial_endgame (A : AdmissibleClass) :
    ConstrainedBinomialTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse
