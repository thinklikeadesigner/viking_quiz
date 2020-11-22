
import 'package:flutter/widgets.dart';
import 'package:preview/preview.dart';
import 'screens/first_page.dart';  
void main() {
  runApp(_PreviewApp());
}

class _PreviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreviewPage(
      path: 'screens/first_page.dart',
      providers: () => [
        FirstPage(), 
        
      ],
    );
  }
}
  