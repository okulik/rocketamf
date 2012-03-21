module RocketAMF
  module Values #:nodoc:
    # Array-like object that can store integers, unsigned integers, numbers and objects. Used to preserve type information
    # for unmapped objects after deserialization.
    class Vector < Array
      attr_reader :type, :object_type

      def initialize type, object_type=nil
        @type = type
        @object_type = object_type
      end
    end
  end
end
