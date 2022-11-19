import Heap
import Queue

public struct MinimumPriorityQueue<Element> {
  var _storage: Heap<Element>
  
  public init(
    orderedBy areInAscendingOrder:
      @escaping (Element, Element) -> Bool
  ) {
    _storage = Heap(orderedBy: areInAscendingOrder)
  }
}

extension MinimumPriorityQueue: Queue {
  public var isEmpty: Bool {
    _storage.isEmpty
  }
  
  public var count: Int {
    _storage.count
  }
  
  public var front: Element? {
    _storage.min
  }
  
  public mutating func enqueue(_ newElement: Element) {
    _storage.insert(newElement)
  }
  
  public mutating func dequeue() -> Element? {
    _storage.popMin()
  }
}
