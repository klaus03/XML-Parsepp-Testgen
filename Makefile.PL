use 5.014;

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'XML::Parsepp::Testgen',
    VERSION_FROM      => 'lib/XML/Parsepp/Testgen.pm', # finds $VERSION
    PREREQ_PM         => { 'XML::Parser' => 0, 'Test::LongString' => 0.15 }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/XML/Parsepp/Testgen.pm', # retrieve abstract from module
       AUTHOR         => 'Klaus Eichner <klaus03@gmail.com>') : ()),
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
               type => 'git',
               url  => 'https://github.com/klaus03/XML-Parsepp-Testgen.git',
               web  => 'https://github.com/klaus03/XML-Parsepp-Testgen',
           }
        }})
        : ()
    ),
);
