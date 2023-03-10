import 'dart:io';
import 'dart:math';

// all functions are here

One() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses['fri'] = 5000.0;
  }

  print(expenses);
}

Two() {
  double calculateArea(double radius) {
    return 3.14 * radius * radius;
  }

  double radius = 5.0;
  double area = calculateArea(radius);
  print('The area of the circle is $area');
}

Three(double a, double b) {
  double c = sqrt(a * a + b * b);
  print(c);
}

Four() {
  String reverseString(String str) {
    String reversedStr = '';
    for (int i = str.length - 1; i >= 0; i--) {
      reversedStr += str[i];
    }
    return reversedStr;
  }

  String str = 'hello';
  String reversedStr = reverseString(str);
  print('Original string: $str');
  print('Reversed string: $reversedStr');
}

Five() {
  signUp(String username, String email, String password,
      {String? phoneNumber}) {
    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      print('Error: username, email, and password are required fields');
      return;
    }

    // Create user object and print details
    Map<String, String> user = {
      'username': username,
      'email': email,
      'password': password
    };
    if (phoneNumber != null) {
      user['phone'] = phoneNumber;
    }
    print('User created successfully:');
    user.forEach((key, value) => print('$key: $value'));
  }

  loginUser(String username, String password) {
    if (username == 'john' && password == 'password') {
      print('Login successful');
    } else {
      print('Login failed: incorrect username or password');
    }
  }

  // Sign up 3 users
  signUp('john', 'john@example.com', 'password');
  signUp('jane', 'jane@example.com', 'password', phoneNumber: '1234567890');
  signUp('bob', 'bob@example.com', 'password', phoneNumber: '0987654321');

  // Test login function
  loginUser('john', 'password'); // correct credentials
  loginUser('jane', 'wrongpassword'); // incorrect password
  loginUser('dave', 'password'); // user not found
}

Six() {
  int power(int base, int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }

  print(power(2, 3)); // Output: 8
  print(power(5, 2)); // Output: 25
  print(power(10, 0)); // Output: 1
}

Seven() {
  countVowelsAndConsonants(String str) {
    Map<String, int> counts = {"vowels": 0, "consonants": 0};
    String vowels = "a e i o u , A E I O U";

    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (vowels.contains(letter)) {
        counts["vowels"] = counts["vowels"]! + 1;
      } else if (letter != " ") {
        counts["consonants"] = counts["consonants"]! + 1;
      }
    }

    return counts;
  }

  String str = "Hello World";
  Map<String, int> counts = countVowelsAndConsonants(str);
  print("Vowels: ${counts["vowels"]}");
  print("Consonants: ${counts["consonants"]}");
}

void main() {
  print("Question One");
  print("====================================================================");
  print("");
  One();
  print("");
  print("");
  print("Question Two");
  print("====================================================================");
  print("");
  Two();
  print("");
  print("");
  print("Question Three");
  print("====================================================================");
  print("");
  Three(10.0, 15.0);
  print("");
  print("");
  print("Question Four");
  print("====================================================================");
  print("");
  Four();
  print("");
  print("");
  print("Question Five");
  print("====================================================================");
  print("");
  Five();
  print("");
  print("");
  print("Question Six");
  print("====================================================================");
  print("");
  Six();
  print("");
  print("");
  print("Question Seven");
  print("====================================================================");
  print("");
  Seven();
  print("");
  print("====================================================================");
}
