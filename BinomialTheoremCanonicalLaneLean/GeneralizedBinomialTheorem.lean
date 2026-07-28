import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure GeneralizedBinomialTheoremPackage where
  r : ℚ
  x : ℚ
  series : ℚ → ℚ
  expansion : ℚ
  convergenceCondition : ‖x‖ < 1
  seriesFormula : series = λ y => ∑_{k=0}^{∞} (∏_{j=0}^{k-1} (r-j)) / (k! : ℚ) * y^k
  expansionClosed : series x = expansion

structure GeneralizedBinomialTheoremEvidence (G : GeneralizedBinomialTheoremPackage) where
  convergenceConditionClosed : G.convergenceCondition
  expansionClosed : G.expansionClosed

def GeneralizedBinomialTheoremClosed (G : GeneralizedBinomialTheoremPackage) : Prop :=
  G.convergenceCondition ∧ G.expansionClosed

theorem generalized_binomial_theorem_closed_from_evidence
    (G : GeneralizedBinomialTheoremPackage) (E : GeneralizedBinomialTheoremEvidence G) :
    GeneralizedBinomialTheoremClosed G := by
  exact And.intro E.convergenceConditionClosed E.expansionClosed

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse