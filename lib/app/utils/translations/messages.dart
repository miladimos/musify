import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'logged_in': 'logged in as @name with email @email',
        },
        'fa_IR': {
          'hello': 'سلام',
          'logged_in': 'به عنوان @name با ایمیل @email وارد شده اید.',
        }
      };
}

//
// Text('logged_in'.trParams({
// 'name': 'Jhon',
// 'email': 'jhon@example.com'
// }));