require_relative 'queue'

describe MyQueue do

  let(:queue) { MyQueue.new }

  before(:each) do
    queue.enqueue("a")
    queue.enqueue("b")
    queue.enqueue("c")
  end

  it "can instantiate a queue as a linked list" do
    expect(queue.size).to eq(3)
    expect(queue).to be_a(LinkedList)
    expect(queue).to be_a(MyQueue)
  end

  it "can add a new element to the queue" do
    expect { queue.enqueue("d") }.to change { queue.size }.from(3).to(4)
  end

  it "can return the first item in the queue" do
    expect(queue.peel).to eq("a")
  end

  it "dequeue will remove the first element entered into the queue" do
    queue.dequeue
    expect(queue.peel).to eq("b")
  end

  it "dequeue will return the element removed from the queue" do
    expect(queue.dequeue).to eq("a")
  end

  it "enqueuing a new element will not change the first element in the queue" do
    queue.enqueue("d")
    expect(queue.peel).to eq("a")
  end

  it "can check if queue is empty" do
    empty_queue = MyQueue.new
    expect(empty_queue.empty?).to be true
    expect(queue.empty?).to be false
  end

end
