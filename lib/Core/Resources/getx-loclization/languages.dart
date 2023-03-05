import 'package:get/get_navigation/get_navigation.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_Us': {
          'email_hint ': "Enter Email",
          'internet_exception':
              'We are enable to connect \nwith internet please check\n your internet.',
          'gernal_exception':
              'We are enable to process your request.\n Please try again',
          'wellcome_back': 'Wellcome \n back!',
          'login': 'Login',
          "hint_email": ' Email',
          'hint_password': "Password",
        },
        'ur_PK': {'email_hint': "ای میل درج کریں"}
      };
}
