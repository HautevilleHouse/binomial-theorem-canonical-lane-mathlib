import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Nat.Choose.Basic

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure BinomialSpace where
  baseSet : Type
  addition : baseSet → baseSet → baseSet
  zero : baseSet
  addAssoc : ∀ x y z : baseSet, addition (addition x y) z = addition x (addition y z)
  addComm : ∀ x y : baseSet, addition x y = addition y x
  addZero : ∀ x : baseSet, addition x zero = x

structure BinomialAdmittedObject where
  n : ℕ
  k : ℕ
  coeff : ℕ
  matchesFormula : coeff = Nat.choose n k
  conclusion : coeff = Nat.choose n k := matchesFormula

structure AdmissibleClass where
  object : BinomialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse