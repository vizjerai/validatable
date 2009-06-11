require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

module Functional
  class ValidatesInclusionOfTest < Test::Unit::TestCase

    test "given no name, when validated, then error is in the objects error collection" do
      klass = Class.new do
        include Validatable
        attr_accessor :name
        validates_inclusion_of :name, :in => [true]
      end
      instance = klass.new
      assert_equal false, instance.valid?
      assert_equal "is not included in the list", instance.errors.on(:name)
    end

    test "given no gender with custom message, when validated, then error is the custom message" do
      klass = Class.new do
        include Validatable
        attr_accessor :gender
        validates_inclusion_of :gender, :in => %w( m f ), :message => "whoa! what are you then!??!!"
      end
      instance = klass.new
      assert_equal false, instance.valid?
      assert_equal "whoa! what are you then!??!!", instance.errors.on(:gender)
    end

    test "given gender, when validated, then no error message" do
      klass = Class.new do
        include Validatable
        attr_accessor :gender
        validates_inclusion_of :gender, :in => %w( m f ), :message => "whoa! what are you then!??!!"
      end
      instance = klass.new
      instance.gender = 'f'
      assert_equal true, instance.valid?
      assert_equal nil, instance.errors.on(:gender)
    end

    test 'given age, when validated, then no error message' do
      klass = Class.new do
        include Validatable
        attr_accessor :age
        validates_inclusion_of :age, :in => 0..99
      end
      instance = klass.new
      instance.age = rand(99)
      assert_equal true, instance.valid?
      assert_equal nil, instance.errors.on(:age)
    end

  end
end