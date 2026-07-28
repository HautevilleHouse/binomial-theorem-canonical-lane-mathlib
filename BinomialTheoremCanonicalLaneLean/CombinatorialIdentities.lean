import BinomialTheoremCanonicalLaneLean.FactorialDefinitions

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure CombinatorialIdentityPackage
    {F : FactorialSystem} (B : BinomialCoefficientPackage F) where
  vandermondeIdentity : Prop
  hockeyStickIdentity : Prop
  binomialTheoremIdentity : Prop
  vandermondeIdentityTerm : vandermondeIdentity
  hockeyStickIdentityTerm : hockeyStickIdentity
  binomialTheoremIdentityTerm : binomialTheoremIdentity

structure CombinatorialIdentityEvidence
    {F : FactorialSystem} {B : BinomialCoefficientPackage F}
    (I : CombinatorialIdentityPackage B) where
  vandermondeIdentityClosed : I.vandermondeIdentity
  hockeyStickIdentityClosed : I.hockeyStickIdentity
  binomialTheoremIdentityClosed : I.binomialTheoremIdentity

def CombinatorialIdentityClosed
    {F : FactorialSystem} {B : BinomialCoefficientPackage F}
    (I : CombinatorialIdentityPackage B) : Prop :=
  I.vandermondeIdentity ∧ I.hockeyStickIdentity ∧ I.binomialTheoremIdentity

theorem combinatorial_identity_closed_from_evidence
    {F : FactorialSystem} {B : BinomialCoefficientPackage F}
    (I : CombinatorialIdentityPackage B)
    (E : CombinatorialIdentityEvidence I) : CombinatorialIdentityClosed I := by
  exact And.intro E.vandermondeIdentityClosed
    (And.intro E.hockeyStickIdentityClosed E.binomialTheoremIdentityClosed)

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse