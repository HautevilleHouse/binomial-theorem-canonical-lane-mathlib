import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BinomialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BinomialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.expansion

end BinomialTheoremCanonicalLaneLean
end HautevilleHouse
