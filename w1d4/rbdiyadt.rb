class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    puts @stack
  end

end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    puts @queue
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key,value)
    @map = @map.each do |pairs|
      if pairs[0] == key
        pairs[1] = value
        return @map
      end

    end

    @map += [[key,value]]
  end

  def lookup(key)
    @map.each do |pairs|
      return pairs[1] if pairs[0] == key
    end
    return nil
  end

  def remove(key)
    removal_idx = nil
    @map.each_with_index do |pairs, index|
      if pairs[0] == key
        removal_idx = index
      end
    end
    return nil if removal_idx == nil
    @map.delete_at(removal_idx)

  end

  def show
    @map
  end
end
