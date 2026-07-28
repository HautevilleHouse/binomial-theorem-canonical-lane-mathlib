import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  binomialConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "binomial-theorem-canonical-lane"
  theoremName := "Binomial Theorem"
  theoremObject := "(a+b)^n = Σ_{k=0}^n C(n,k) a^{n-k} b^k"
  classicalBoundary := "classical induction and combinatorial identities"
  binomialConstrainedStatement := "expansion correct for all commutative rings"
  certificateLane := "manifold_constrained"
  carriedRemainder := "the unrestricted classical closure is carried"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "binomial-theorem-canonical-lane" := by
  rfl

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse