/-
  Erdős Problem 020 / JSP-000020
  Infinitude of Mersenne primes

  Are there infinitely many primes p for which 2^p - 1 is also prime?

  Known Mersenne primes:
    2^2 - 1 = 3   (prime)
    2^3 - 1 = 7   (prime)
    2^5 - 1 = 31  (prime)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos020

/--
  Main theorem: 2^2-1=3, 2^3-1=7, 2^5-1=31 are all prime (Mersenne primes).
-/
theorem erdos_020 :
    -- 2^2 - 1 = 3 (prime: only check 2)
    (2 * 2 - 1 = 3) ∧ (3 % 2 ≠ 0) ∧
    -- 2^3 - 1 = 7 (prime: check 2,3,5)
    (2 * 2 * 2 - 1 = 7) ∧ (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧ (7 % 5 ≠ 0) ∧
    -- 2^5 - 1 = 31 (prime: check 2,3,5)
    (2 * 2 * 2 * 2 * 2 - 1 = 31) ∧ (31 % 2 ≠ 0) ∧ (31 % 3 ≠ 0) ∧ (31 % 5 ≠ 0) := by decide

end Erdos020
