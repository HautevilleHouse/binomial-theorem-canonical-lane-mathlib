import BinomialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure FactorialSystem where
  nFactorial : ℕ
  factorialRecursion : Prop
  zeroFactorialOne : Prop
  positivityForN : Prop

structure FactorialSystemEvidence (F : FactorialSystem) where
  factorialRecursionClosed : F.factorialRecursion
  zeroFactorialOneClosed : F.zeroFactorialOne
  positivityForNClosed : F.positivityForN

def FactorialSystemClosed (F : FactorialSystem) : Prop :=
  F.factorialRecursion ∧ F.zeroFactorialOne ∧ F.positivityForN

theorem factorial_system_closed_from_evidence
    (F : FactorialSystem) (E : FactorialSystemEvidence F) :
    FactorialSystemClosed F := by
  exact And.intro E.factorialRecursionClosed
    (And.intro E.zeroFactorialOneClosed E.positivityForNClosed)

structure BinomialCoefficientPackage (F : FactorialSystem) where
  binomDef : ℕ → ℕ → ℕ
  binomFormula : Prop
  symmetry : Prop
  absorption : Prop
  binomFormulaTerm : binomFormula
  symmetryTerm : symmetry
  absorptionTerm : absorption

structure BinomialCoefficientEvidence {F : FactorialSystem}
    (B : BinomialCoefficientPackage F) where
  binomFormulaClosed : B.binomFormula
  symmetryClosed : B.symmetry
  absorptionClosed : B.absorption

def BinomialCoefficientClosed {F : FactorialSystem}
    (B : BinomialCoefficientPackage F) : Prop :=
  B.binomFormula ∧ B.symmetry ∧ B.absorption

theorem binomial_coefficient_closed_from_evidence
    {F : FactorialSystem} (B : BinomialCoefficientPackage F)
    (E : BinomialCoefficientEvidence B) : BinomialCoefficientClosed B := by
  exact And.intro E.binomFormulaClosed
    (And.intro E.symmetryClosed E.absorptionClosed)

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse