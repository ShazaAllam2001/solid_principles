# Simple Payment System

apply all 5 SOLID Principles to make a simple payment system

- Single Responsibility Principle (SRP):
Each class has one responsibility: CashPayment and CreditPayment handle payment logic, and SimplePaymentSystem handles payment processing.

- Open/Closed Principle (OCP):
SimplePaymentSystem is open for extension (you can add new payment methods like BitcoinPayment), but closed for modification (you don’t need to modify PaymentProcessor to add new payment types).

- Liskov Substitution Principle (LSP):
You can replace any Payment object (like CashPayment or CreditPayment) with another one without affecting the behavior of the SimplePaymentSystem.

- Interface Segregation Principle (ISP):
The Payment interface is simple and focused on one method (processPayment). Clients don’t depend on methods they don’t use.

- Dependency Inversion Principle (DIP):
SimplePaymentSystem depends on the Payment abstraction (interface) rather than concrete classes like CashPayment or CreditPayment. This allows easy substitution of different payment methods without changing the core logic of SimplePaymentSystem.

## Screenshots
[Screenshots Folder]()