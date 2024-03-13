abstract class Observer {
  void update(String message);
}

class Publisher {
  final List<Observer> _subscribers = [];

  void subscribe(Observer observer) {
    _subscribers.add(observer);
  }

  void unsubscribe(Observer observer) {
    _subscribers.remove(observer);
  }

  void notifySubscribers(String message) {
    for (var subscriber in _subscribers) {
      subscriber.update(message);
    }
  }
}

class Subscriber implements Observer {
  final String _name;

  Subscriber(this._name);

  @override
  void update(String message) {
    print("$_name received: $message");
  }
}

void main() {
  Publisher publisher = Publisher();
  Subscriber subscriber1 = Subscriber("Subscriber 1");
  Subscriber subscriber2 = Subscriber("Subscriber 2");

  publisher.subscribe(subscriber1);
  publisher.subscribe(subscriber2);

  publisher.notifySubscribers("Hello, subscribers!");

  publisher.unsubscribe(subscriber1);

  publisher.notifySubscribers("Goodbye, subscribers!");
}
