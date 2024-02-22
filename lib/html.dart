import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_html/flutter_html.dart';

class HtmlExample extends StatefulWidget {
  @override
  _HtmlExampleState createState() => _HtmlExampleState();
}

class _HtmlExampleState extends State<HtmlExample> {
  String htmlContent = '';

  @override
  void initState() {
    super.initState();
    loadHtmlFromAssets();
  }

  Future<void> loadHtmlFromAssets() async {
    String html = await rootBundle.loadString('assets/index.html');
    setState(() {
      htmlContent = html;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTML Example'),
      ),
      body: SingleChildScrollView(
        child: Html(
          data: htmlContent,
        ),
      ),
    );
  }
}
