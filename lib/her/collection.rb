module Her
  class Collection < ::Array
    attr_reader :metadata, :errors, :total

    # @private
    def initialize(items=[], metadata={}, errors={}, total=0)
      super(items)
      @metadata = metadata
      @errors = errors
      @total = total ? total : items.count
    end
  end
end
