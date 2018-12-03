class Stack

  def initialize
    @top = -1
    @array = []
  end

  def push(value)
    @top += 1
    @array[@top] = value
  end

  def pop
    raise "Stack Underflow" if empty_stack
    @top -= 1
  end 

  def list
    return [] if @top == -1
    @array[0..@top]
  end

  private

  def empty_stack
    @top == -1
  end
end


book = Stack.new
book.push("Lord of the rings")
book.push("Harry Potter")
book.push("Twilight")
book.pop
book.list
