import HautevilleHouse.BinomialTheoremCanonicalLaneLean.BinomialExpansion

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure GeneralizationPackage {B : BinomialCoefficientPackage} {E : BinomialExpansionPackage B} where
  multinomialTheorem : Prop
  negativeBinomialTheorem : Prop
  binomialSeries : Prop

structure GeneralizationEvidence {B : BinomialCoefficientPackage} {E : BinomialExpansionPackage B} (G : GeneralizationPackage) where
  multinomialTheoremClosed : G.multinomialTheorem
  negativeBinomialTheoremClosed : G.negativeBinomialTheorem
  binomialSeriesClosed : G.binomialSeries

def GeneralizationClosed {B : BinomialCoefficientPackage} {E : BinomialExpansionPackage B} (G : GeneralizationPackage) : Prop :=
  G.multinomialTheorem ∧ G.negativeBinomialTheorem ∧ G.binomialSeries

theorem generalization_closed_from_evidence
    {B : BinomialCoefficientPackage} {E : BinomialExpansionPackage B} (G : GeneralizationPackage)
    (EV : GeneralizationEvidence G) : GeneralizationClosed G := by
  exact And.intro EV.multinomialTheoremClosed
    (And.intro EV.negativeBinomialTheoremClosed EV.binomialSeriesClosed)

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse
