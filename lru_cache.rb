class LRUCache
  def initialize(size)
    @cache = []
    @size = size
  end

  def count
    @cache.length
  end

  def add(el)
    space_idx = check_timestamp?(el)
    if @cache.count
      @cache.delete_at(space_idx) if space_idx
      @cache.unshift([el, Time.new])
    else
      @cache.delete_at(space_idx) if space_idx
      @cache.unshift([el, Time.new])
      @cache.pop
    end
      @cache
  end

  def show
    # shows the item in the cache, with the LRU item first
    p @cache
  end

  private
  # helper methods go here!
  def check_timestamp?(el)
    @cache.each_with_index do |space, space_idx|
      if space.include?(el)
        return space_idx
      end
    end
    return -1
  end



end

# class LinkedList
#   def initialize(value, next_val = nil, prev = nil)
#     @value = val
#     @next = next_val
#     @prev = prev
#   end
#
# end
