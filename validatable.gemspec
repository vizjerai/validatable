# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{validatable}
  s.version = "1.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jay Fields", "John Nunemaker"]
  s.date = %q{2009-06-11}
  s.email = %q{nunemaker@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "lib/child_validation.rb",
     "lib/errors.rb",
     "lib/included_validation.rb",
     "lib/macros.rb",
     "lib/object_extension.rb",
     "lib/requireable.rb",
     "lib/understandable.rb",
     "lib/validatable.rb",
     "lib/validatable_class_methods.rb",
     "lib/validatable_instance_methods.rb",
     "lib/validations/validates_acceptance_of.rb",
     "lib/validations/validates_confirmation_of.rb",
     "lib/validations/validates_each.rb",
     "lib/validations/validates_format_of.rb",
     "lib/validations/validates_inclusion_of.rb",
     "lib/validations/validates_length_of.rb",
     "lib/validations/validates_numericality_of.rb",
     "lib/validations/validates_presence_of.rb",
     "lib/validations/validates_true_for.rb",
     "lib/validations/validation_base.rb",
     "test/all_tests.rb",
     "test/functional/test_validatable.rb",
     "test/functional/test_validates_acceptance_of.rb",
     "test/functional/test_validates_confirmation_of.rb",
     "test/functional/test_validates_each.rb",
     "test/functional/test_validates_format_of.rb",
     "test/functional/test_validates_inclusion_of.rb",
     "test/functional/test_validates_length_of.rb",
     "test/functional/test_validates_numericality_of.rb",
     "test/functional/test_validates_presence_of.rb",
     "test/functional/test_validates_true_for.rb",
     "test/test_helper.rb",
     "test/unit/test_errors.rb",
     "test/unit/test_understandable.rb",
     "test/unit/test_validatable.rb",
     "test/unit/test_validates_acceptance_of.rb",
     "test/unit/test_validates_confirmation_of.rb",
     "test/unit/test_validates_format_of.rb",
     "test/unit/test_validates_inclusion_of.rb",
     "test/unit/test_validates_length_of.rb",
     "test/unit/test_validates_numericality_of.rb",
     "test/unit/test_validates_presence_of.rb",
     "test/unit/test_validates_true_for.rb",
     "test/unit/test_validation_base.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jnunemaker/validatable}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Validatable is a library for adding validations.}
  s.test_files = [
    "test/all_tests.rb",
     "test/functional/test_validatable.rb",
     "test/functional/test_validates_acceptance_of.rb",
     "test/functional/test_validates_confirmation_of.rb",
     "test/functional/test_validates_each.rb",
     "test/functional/test_validates_format_of.rb",
     "test/functional/test_validates_inclusion_of.rb",
     "test/functional/test_validates_length_of.rb",
     "test/functional/test_validates_numericality_of.rb",
     "test/functional/test_validates_presence_of.rb",
     "test/functional/test_validates_true_for.rb",
     "test/test_helper.rb",
     "test/unit/test_errors.rb",
     "test/unit/test_understandable.rb",
     "test/unit/test_validatable.rb",
     "test/unit/test_validates_acceptance_of.rb",
     "test/unit/test_validates_confirmation_of.rb",
     "test/unit/test_validates_format_of.rb",
     "test/unit/test_validates_inclusion_of.rb",
     "test/unit/test_validates_length_of.rb",
     "test/unit/test_validates_numericality_of.rb",
     "test/unit/test_validates_presence_of.rb",
     "test/unit/test_validates_true_for.rb",
     "test/unit/test_validation_base.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
