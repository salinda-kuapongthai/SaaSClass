class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name+"_history"
    class_eval %Q{
      def #{attr_name}
        @#{attr_name}
      end
      def #{attr_name}=(value)
        if @#{attr_name+"_history"}==nil
          @#{attr_name+"_history"} = [nil]
        end
        @#{attr_name+"_history"} += [value]
        @#{attr_name} = value
      end
      def #{attr_name+"_history"}
        @#{attr_name+"_history"}
      end
    }
  end
end

class Foo
  attr_accessor_with_history :bar
end
