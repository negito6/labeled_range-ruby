module LabeledRange
  class BaseDefault
    attr_reader :value

    def initialize(value)
      @value = value

      definitions = { good: 0, warning: 0.7, danger: 0.9 }
      max = 1

      thresholds = definitions.values.sort
      thresholds.push(max)

      @@ranges = thresholds.each_cons(2).each_with_object({}) do |(lower, upper), ranges|
        range = lower..upper
        key = definitions.key(lower)

        self.class.class_eval do
          define_method("#{key}?".to_sym) do
            range === value
          end
        end

        ranges[key] = range
      end
    end

    def level
      unless defined?(@level)
        @@ranges.each do |key, range|
          @level =  key if range === value
        end
      end

      @level || :undefined
    end
  end
end
