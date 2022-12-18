password(value) {
  if (value.isEmpty) {
    return "* Required";
  } else if (value.length < 6) {
    return "Password should be atleast 6 characters";
  } else if (value.length > 15) {
    return "Password should not be greater than 15 characters";
  } else {
    return null;
  }
}

username(value) {
  if (value == null || value.isEmpty) {
    return 'Please enter some text';
  }
  return null;
}
