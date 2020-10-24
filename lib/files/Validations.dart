String validateEmail(String value) {
  Pattern pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter a valid email address';
  else
    return null;
}

String validatePassword(String value) {
  if (value.trim() == "")
    return 'Enter a valid password';
  else
    return null;
}
String validateUser(String value) {
  Pattern pattern = r'^[a-zA-Z0-9]+$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter a valid username';
  else
    return null;
}
String validatePhone(String value) {
  Pattern pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter a valid phone number';
  else
    return null;
}
