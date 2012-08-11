use strict;
use warnings;
use 5.014;

use Module::Build;

Module::Build->new(
  module_name        => 'XML::Parsepp::Testgen',
  license            => 'perl',
  configure_requires => { 'Module::Build' => 0.30 },
  requires           => { 'XML::Parser' => 0, 'Test::LongString' => 0.15 },
  dist_abstract      => 'Generate testcases for XML::Parsepp',
)->create_build_script;
