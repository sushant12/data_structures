class Queue

  def initialize
    @rear = -1
    @front = 0
    @array = []
  end

  def enqueue(value)
    @rear += 1
    @array[@rear] = value
  end

  def dequeue
    raise "Stack Underflow" if empty_queue
    @front += 1
  end 

  def list
    @array[@front .. @rear]
  end

  private

  def empty_queue
    @front > @rear
  end
end

client = Queue.new
client.enqueue("Sushant")
client.enqueue("Manish")
client.dequeue
client.list
