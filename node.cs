namespace ConsoleApp
{
  public class Node
  {
    public Node next;
    public Object data;
  }

  public class LinkedList
  {
    private Node head;

    public void printAllNodes()
    {
      Node current = head;
      while (current != null)
      {
        Console.WriteLine(current.data);
        current = current.next;
      }
    }

    public void AddFirst(Object data)
    {
      Node toAdd = new Node();
      toAdd.data = data;
      toAdd.next = head;
      head = toAdd;
    }

    public void AddLast(Object data)
    {
      if (head == null)
      {
        head = new Node();
        head.data = data;
        head.next = null;
      }
      else
      {
        Node toAdd = new Node();
        toAdd.data = data;
        Node current = head;
        while (current.next != null)
        {
          current = current.next;
        }
        current.next = toAdd;
      }
    }
  }

  class Program
  {
    static void Main(string[] args)
    {
      Console.WriteLine("Add First:");
      LinkedList myList1 = new LinkedList();

      myList1.AddFirst("1");
      myList1.AddFirst("2");
      myList1.AddFirst("3");
      myList1.printAllNodes();

      Console.WriteLine();

      Console.WriteLine("Add Last:");
      LinkedList myList2 = new LinkedList();

      myList2.AddLast("4");
      myList2.AddLast("5");
      myList2.AddLast("6");
      myList2.printAllNodes();

      Console.ReadLine();
    }
  }
}