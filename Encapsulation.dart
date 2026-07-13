import 'dart:ffi';

class BankAccount{
  double _balance = 0;
  double get balance => _balance;


set balance(double amount){
  if(amount < 0){
    print("ผิดพลาด: ยอดเงินติดลบไม่ได้");
  }else{
    _balance = amount;
  }
}

void deposit(double amount){
  if (amount > 0) _balance += amount;
 }
}

void main(){
  var account = BankAccount();
  
  account.deposit(1000);
  account.balance = 100;
  
  print("ยอดเงินคงเหลือ: ${account.balance}");
}
