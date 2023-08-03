{ lib, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "libqd";
  version = "2.3.23";

  src = fetchurl {
    url = "https://www.davidhbailey.com/dhbsoftware/qd-${version}.tar.gz";
    hash = "sha256-s+r0HOQT7AjzSO5z5ga9P/kgPkEcN3w8BGf4ms9p7iY=";
  };

  meta = with lib; {
    description = "A double-double and quad-double package for Fortran and C++";
    homepage = "https://www.davidhbailey.com/dhbsoftware/";
    license = licenses.bsd3LBNL;
    platforms = platforms.unix;
  };
}
