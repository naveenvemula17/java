---------------------------------------------- Queue ------------------------------------------

Queue implementation using arrays.

    class Queue {
        int[] arr;
        int front;
        int rear;
        int size;

        Queue(int capacity) {
            arr = new int[capacity];
            front = 0;
            rear = -1;
            size = 0;
        }

        // Add element
        void enqueue(int value) {
            if (size == arr.length) {
                System.out.println("Queue is full");
                return;
            }

            rear++;
            arr[rear] = value;
            size++;
        }

        // Remove element
        int dequeue() {
            if (size == 0) {
                System.out.println("Queue is empty");
                return -1;
            }

            int value = arr[front];
            front++;
            size--;

            return value;
        }

        // Get front element
        int peek() {
            if (size == 0) {
                System.out.println("Queue is empty");
                return -1;
            }

            return arr[front];
        }

        // Display queue
        void display() {
            if (size == 0) {
                System.out.println("Queue is empty");
                return;
            }

            for (int i = front; i <= rear; i++) {
                System.out.print(arr[i] + " ");
            }
            System.out.println();
        }
    }

    java.lang.Iterable
            ↓
    java.util.Collection
            ↓
    java.util.Queue
            ↓
    ┌────┴────┐
    ↓         ↓
    Deque   BlockingQueue
    ↓         ↓
    ArrayDeque  ArrayBlockingQueue
    LinkedList  LinkedBlockingQueue

-> ArrayDeque is a class which is used as queue as well as stack because stack in list interface is legacy.Here ArrayDeque implements deque which  says double ended queue so if we close operations from one end it acts as stack.

-> Null is not allowed in ArrayDeque and allowed in linkedlist.

Methods in single ended queue :QUEUE

    queue.add()                                // if adding fails it returns exception.
    queue.offer()                              // if adding fails it returns false.
    queue.peek()                               // returns front element added.returns null if there is no element present.
    queue.element()                            // can throw exception
    queue.remove()                            
    queue.poll()

Methods in double ended queue : DEQUE   

    same methods with first and last added.
    queue.addFirst(),queue.addLast() same for every method in queue except element instead of elementFirst we use getFirst() and getLast().


PRIORITY QUEUE :

    when we poll the the element with highest priority will be remove generally priority is ascending order.

    Internal implementaion :

        It uses min heap data strucutre internally.

         Heapify algorithm is used to maintain heap.

         when we add a small number to priority queue using up-heapify element moves to the top.
         when we remove a element(root) using down-heapify last element moves to root and compares with child and moves down.

        parent index = ( i - 1 )/2 (floor)
        left         = 2i + 1
        right        = 2i + 2

    -> time complexity of offer and poll is O(n).



         

