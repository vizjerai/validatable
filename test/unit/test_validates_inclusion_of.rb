require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

Expectations do

  expect false do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name
    validation.valid?(stub_everything)
  end

  expect false do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :in => [true]
    validation.valid?(stub(:name => false))
  end

  expect false do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :in => ['No']
    validation.valid?(stub(:name => 'Yes'))
  end

  expect true do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :in => [true]
    validation.valid?(stub(:name => true))
  end

  expect true do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :in => ['Yes','No']
    validation.valid?(stub(:name => 'Yes'))
  end

  expect true do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :allow_nil => true, :in => [true, false]
    validation.valid?(stub(:name => nil))
  end

  expect true do
    validation = Validatable::ValidatesInclusionOf.new stub_everything, :name, :allow_blank => true, :in => [true, false]
    validation.valid?(stub(:name => ''))
  end

end