import 'dart:io';



void main()

{
  while(true){ 
    
      print("Yapmak istediğiniz işlemi seçiniz.");
      String? islem  = stdin.readLineSync();

      print("işlem yapmak istediğiniz iki sayı giriniz\n");
      int? sayi1 = int.parse(stdin.readLineSync()!);
      int? sayi2 = int.parse(stdin.readLineSync()!);

      switch(islem){
        case  "+":
        toplama(sayi1,sayi2);
        break;

        case "-":
        cikarma(num1: sayi1, num2:sayi2);
        break;

        case "*":
        carpma( sayi1,sayi2);
        break;

        case "/":
        bolme(num1: sayi1, num2: sayi2);
        break;

        default:
        print("geçersiz işlem ");
        break;
      }


    }
}
 
void toplama(int num1, int num2){
  int sum;
  sum = num1 + num2;

  print("işlemin sonucu: $sum");

}

void cikarma( {int? num1 ,  int? num2 }){
  if (num1 != null && num2 != null) {
    int sonuc = num1 - num2;
    print("İşlemin sonucu: $sonuc");
  } else {
    print("Geçersiz sayı girdiniz!");
  }
}


void carpma(  int num1 ,  int num2,[int num3 = 1]){
  int carpim;
  carpim = num1 *num2;
  print("işlemin sonucu: $carpim");

}

void bolme({required int num1 , required int num2}){
  double bolum ;
  bolum= (num1/num2);
  print("işlemin sonucu: $bolum");
  if(num2 ==0 ){
    print("geçersiz sayi girdiniz !");
  }


}

