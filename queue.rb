require_relative '../data-structures-linked-list-challenge/linked_list.rb'

class MyQueue < LinkedList

  def peel
    get(size - 1)
  end

  def enqueue(element)
    insert_first(element)
  end

  def dequeue
    popped_element = peel
    remove_last
    popped_element
  end

  def empty?
    @size == 0
  end

end
