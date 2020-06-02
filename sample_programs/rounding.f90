program rounding
  use iso_fortran_env, only : real64
  implicit none

  real(kind=real64) :: a, b, c

  a = 1.5
  b = 1.5
  c = 1.0000000000000002_real64

  print '(a, es23.17)', "(a * b) * c = ", (a * b) * c
  print '(a, es23.17)', "a * (b * c) = ", a * (b * c)
end program rounding
