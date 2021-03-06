{ cabal, byteable, securemem }:

cabal.mkDerivation (self: {
  pname = "crypto-cipher-types";
  version = "0.0.9";
  sha256 = "03qa1i1kj07pfrxsi7fiaqnnd0vi94jd4jfswbmnm4gp1nvzcwr0";
  buildDepends = [ byteable securemem ];
  meta = {
    homepage = "http://github.com/vincenthz/hs-crypto-cipher";
    description = "Generic cryptography cipher types";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
