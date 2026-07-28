import BinomialTheoremCanonicalLaneLean.CombinatorialIdentities

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure GeneratingFunctionPackage
    {F : FactorialSystem} {B : BinomialCoefficientPackage F}
    (I : CombinatorialIdentityPackage B) where
  ordinaryGeneratingFunction : Prop
  exponentialGeneratingFunction : Prop
  convolutionFormula : Prop
  ordinaryGeneratingFunctionTerm : ordinaryGeneratingFunction
  exponentialGeneratingFunctionTerm : exponentialGeneratingFunction
  convolutionFormulaTerm : convolutionFormula

structure GeneratingFunctionEvidence
    {F : FactorialSystem} {B : BinomialCoefficientPackage F}
    {I : CombinatorialIdentityPackage B}
    (G : GeneratingFunctionPackage I) where
  ordinaryGeneratingFunctionClosed : G.ordinaryGeneratingFunction
  exponentialGeneratingFunctionClosed : G.exponentialGeneratingFunction
  convolutionFormulaClosed : G.convolutionFormula

def GeneratingFunctionClosed
    {F : FactorialSystem} {B : BinomialCoefficientPackage F}
    {I : CombinatorialIdentityPackage B}
    (G : GeneratingFunctionPackage I) : Prop :=
  G.ordinaryGeneratingFunction ∧ G.exponentialGeneratingFunction ∧ G.convolutionFormula

theorem generating_function_closed_from_evidence
    {F : FactorialSystem} {B : BinomialCoefficientPackage F}
    {I : CombinatorialIdentityPackage B}
    (G : GeneratingFunctionPackage I)
    (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.ordinaryGeneratingFunctionClosed
    (And.intro E.exponentialGeneratingFunctionClosed E.convolutionFormulaClosed)

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse