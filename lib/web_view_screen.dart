import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    //..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('http://w05.yeapps.com/attendance/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
      Uri.parse('http://w05.yeapps.com/attendance/'),
    );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(12.0),
          
          child: Column(
            children: [
              Flexible(child: WebViewWidget(controller: controller)),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "eAppair Limited",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
