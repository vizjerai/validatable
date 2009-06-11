module Validatable
  class ValidatesInclusionOf < ValidationBase #:nodoc:
    option :in, :within

    def message(instance)
      super || "is not included in the list"
    end

    def valid?(instance)
      valid = true
      value = instance.send(self.attribute)

      return true if allow_nil && value.nil?
      return true if allow_blank && value.blank?

      enum = self.in || self.within

      valid &&= !enum.blank?
      valid &&= enum.respond_to?(:include?)
      valid &&= enum.include?(value)
      valid
    end

  end
end