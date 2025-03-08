// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "app_title": MessageLookupByLibrary.simpleMessage("Tiger Development"),
    "arabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "email": MessageLookupByLibrary.simpleMessage("Email Address"),
    "english": MessageLookupByLibrary.simpleMessage("English"),
    "ex": MessageLookupByLibrary.simpleMessage("e.g. johndoe@example.com"),
    "forgot_password": MessageLookupByLibrary.simpleMessage(
      "Forgot your password?",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "login": MessageLookupByLibrary.simpleMessage("Log In"),
    "must_have": MessageLookupByLibrary.simpleMessage(
      "\'Must have at least 8 characters",
    ),
    "p_email": MessageLookupByLibrary.simpleMessage("Please enter email"),
    "p_password": MessageLookupByLibrary.simpleMessage("Please enter password"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "recover_password": MessageLookupByLibrary.simpleMessage(
      "Recover Password",
    ),
    "send_reset": MessageLookupByLibrary.simpleMessage("Send Reset Link"),
    "stay_logged_in": MessageLookupByLibrary.simpleMessage("Stay logged in"),
    "valid_email": MessageLookupByLibrary.simpleMessage("Enter valid email"),
    "valid_pass": MessageLookupByLibrary.simpleMessage("Enter valid password"),
  };
}
