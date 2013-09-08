{ cabal, filepath, HUnit, parsec, testFramework, testFrameworkHunit
, transformers
}:

cabal.mkDerivation (self: {
  pname = "cmdtheline";
  version = "0.2.3";
  sha256 = "1jwbr34xgccjbz6nm58bdsg1vqyv87rh45yia5j36vlfbaclyb04";
  buildDepends = [ filepath parsec transformers ];
  testDepends = [
    filepath HUnit parsec testFramework testFrameworkHunit transformers
  ];
  meta = {
    homepage = "http://github.com/eli-frey/cmdtheline";
    description = "Declarative command-line option parsing and documentation library";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})