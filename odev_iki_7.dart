import 'dart:io';

void main() {
  var quiz = Quiz([
    Question("Dünyanın en büyük okyanusu hangisidir?", ["Hint Okyanusu", "Atlas Okyanusu", "Pasifik Okyanusu"], "Pasifik Okyanusu"),
    Question("Hangi gezegen 'Akıl Gezegeni' olarak bilinir?", ["Mars", "Jüpiter", "Dünya"], "Jüpiter"),
    Question("İnsan vücudundaki en büyük organ hangisidir?", ["Kalp", "Beyin", "Cilt"], "Cilt"),
    Question("Hangi dilin konuşulduğu ülkede piramitler bulunmaktadır?", ["Meksika", "Mısır", "İtalya"], "Mısır"),
    Question("Hangi renk gökkuşağının en üstündedir?", ["Mor", "Kırmızı", "Mavi"], "Mor"),
  ]);

  quiz.start();
}

class Question {
  String text;
  List<String> options;
  String correctAnswer;

  Question(this.text, this.options, this.correctAnswer);
}

class Quiz {
  List<Question> questions;
  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  int puan = 0;

  Quiz(this.questions);

  void start() {
    for (var question in questions) {
      askQuestion(question);
    }

    print("Quiz tamamlandı. Toplam doğru cevap sayısı: $correctAnswers/${questions.length}  \nQuizden aldığınız not = $puan");
  }

  void askQuestion(Question question) {
    print(question.text);
    for (var i = 0; i < question.options.length; i++) {
      print("${i + 1}. ${question.options[i]}");
    }

    print("Cevabınızı girin (1-${question.options.length}): ");
    var userAnswer = int.parse(stdin.readLineSync()!);

    if (userAnswer >= 1 && userAnswer <= question.options.length) {
      var userChoice = question.options[userAnswer - 1];
      checkAnswer(question, userChoice);
    } else {
      print("Geçersiz bir seçenek girdiniz. Lütfen tekrar deneyin.");
      askQuestion(question);
    }
  }

  void checkAnswer(Question question, String userChoice) {
    if (userChoice == question.correctAnswer) {
      print("Doğru!");
      correctAnswers++;
      puan += 20; 
    } else {
      print("Yanlış! Doğru cevap: ${question.correctAnswer}");
    }
    print(""); 
  }
}


