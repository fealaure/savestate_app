import 'package:html_unescape/html_unescape.dart';

extension StringExtensions on String {
  String cleanFromHtml() {
    var output = this;
    var unescape = HtmlUnescape();

    output = output.replaceAll(RegExp(r'\[.*?\]'), '');
    output = output.replaceAll(RegExp(r'<[^>]+>'), '');
    output = output.trim();
    output = unescape.convert(output);

    return output;
  }
}
