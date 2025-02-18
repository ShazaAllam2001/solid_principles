// Open/Closed - Interface Segregation
abstract class Payment {
  void processPayment(double amount);
}

// Single Responsibility - Liskov Substitution
class CreditPayment implements Payment {
  @override
  void processPayment(double amount) {
    print("Processing credit payement of ${amount}");
  }
}

class CashPayment implements Payment {
  @override
  void processPayment(double amount) {
    print("Processing cash payement of ${amount}");
  }
}

// Dependency Inversion
class SimplePaymentSystem {
  final Payment payment;

  SimplePaymentSystem(this.payment);

  void process(double amount) {
    payment.processPayment(amount);
  }
}

void main() {
  Payment cashPayment = CashPayment();
  SimplePaymentSystem cashProcessor = SimplePaymentSystem(cashPayment);
  cashProcessor.process(200.0); 

  Payment creditPayment = CreditPayment();
  SimplePaymentSystem creditProcessor = SimplePaymentSystem(creditPayment);
  creditProcessor.process(200.0);
}