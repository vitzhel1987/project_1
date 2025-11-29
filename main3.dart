/*
Задание 3 

Создайте класс BankAccount (Банковский счёт), который содержит:
Приватные переменные accountNumber (номер счета) и balance (баланс).
Публичные методы:
	deposit(double amount) — пополнение счёта.
	withdraw(double amount) — снятие со счёта (если на счету достаточно средств).
	getBalance() — возвращает текущий баланс.

Добавьте валидацию:
Нельзя снимать больше, чем есть на счету.
Нельзя вносить или снимать отрицательные суммы.

Требования:
Примените инкапсуляцию для защиты переменных.
Добавьте проверку данных в методах.
*/

class BankAccount{
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount){
    print('Пополнение счёта №$_accountNumber на сумму $amount');
    if (amount < 0){
      print('Пополнение счета №$_accountNumber отклонено. Причина: отрицательная сумма пополнения ($amount)');   
      return;
    }
    _balance += amount;
    print('Счёт №$_accountNumber успешно пополнен на $amount');
  }

  void withdraw(double amount){
    print('Снятие со счёта №$_accountNumber суммы $amount');

    if (amount < 0){
      print('Снятие со счета №$_accountNumber отклонено. Причина: отрицательная сумма снятия ($amount)');   
      return;
    }

    if (amount > _balance){
      print('Снятие со счета №$_accountNumber отклонено. Недостаточно средств');   
      return;
    }    

    _balance -= amount;
    print('Со счета №$_accountNumber успешно снято $amount');
  }

  void getBalance(){    
    print('Баланс счета №$_accountNumber составляет $_balance');
  }

}

void main() {
  BankAccount bankAccount = BankAccount('bankAccount1', 0);
  bankAccount.getBalance();
  bankAccount.deposit(100);
  bankAccount.deposit(50);
  bankAccount.withdraw(30);
  bankAccount.withdraw(300);
  bankAccount.getBalance();
}