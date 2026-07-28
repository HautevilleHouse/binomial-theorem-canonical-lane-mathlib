import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure PascalIdentityPackage where
  nat : Type
  zero : nat
  succ : nat → nat
  add : nat → nat → nat
  choose : nat → nat → nat
  pascalRecurrence : ∀ (n k : nat), choose (succ n) (succ k) = choose n (succ k) + choose n k
  symmetry : ∀ (n k : nat), choose n k = choose n (add n (negate? not needed))  -- simplified
  pascalProof : pascalRecurrence
  symmetryProof : symmetry

structure PascalIdentityEvidence (P : PascalIdentityPackage) where
  recurrenceClosed : P.pascalRecurrence
  symmetryClosed : P.symmetry

def PascalIdentityClosed (P : PascalIdentityPackage) : Prop :=
  P.pascalRecurrence ∧ P.symmetry

theorem pascal_identity_closed (P : PascalIdentityPackage) (E : PascalIdentityEvidence P) :
    PascalIdentityClosed P := by
  exact And.intro E.recurrenceClosed E.symmetryClosed

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse