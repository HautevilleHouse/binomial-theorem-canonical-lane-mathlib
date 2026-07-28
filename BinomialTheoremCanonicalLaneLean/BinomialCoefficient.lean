import HautevilleHouse.BinomialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure BinomialCoefficientPackage where
  n : ℕ
  k : ℕ
  value : ℕ
  symmetryProperty : Prop
  pascalIdentity : Prop

structure BinomialCoefficientEvidence (B : BinomialCoefficientPackage) where
  symmetryPropertyClosed : B.symmetryProperty
  pascalIdentityClosed : B.pascalIdentity

def BinomialCoefficientClosed (B : BinomialCoefficientPackage) : Prop :=
  B.symmetryProperty ∧ B.pascalIdentity

theorem binomial_coefficient_closed_from_evidence
    (B : BinomialCoefficientPackage) (E : BinomialCoefficientEvidence B) :
    BinomialCoefficientClosed B := by
  exact And.intro E.symmetryPropertyClosed E.pascalIdentityClosed

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse
