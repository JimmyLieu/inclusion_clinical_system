import 'package:flutter/material.dart';
import 'package:inclusion_clinical_system/providers/models_provider.dart';
import 'package:provider/provider.dart';
import 'constants/constants.dart';
import 'providers/chats_provider.dart';
import 'screens/chat_screen.dart';
import 'screens/pdf_upload_screen.dart'; // Import your PdfUploadScreen here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ModelsProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ChatProvider(),
          ),
        ],
        child: MaterialApp(
          // title: 'Inclusion Clinical System',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            ),
          ),
          home: Scaffold(
            //appBar: AppBar(
            //title: const Text('Inclusion Clinical System'),
            //),
            body: const ChatScreen(),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black, // Set your desired border color here
                    width: 1.0, // Set the border width here
                  ),
                ),
              ),
              child: SizedBox(
                height: 100.0,
                child: BottomNavigationBar(
                  backgroundColor: const Color(0xFF5B616A),
                  iconSize: 25.0,
                  elevation: 8.0,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.airline_seat_flat_angled_outlined),
                      label: 'Jimmy Bot',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.file_upload),
                      label: 'Upload',
                    ),
                  ],
                  selectedItemColor: Colors.blue,
                  onTap: (int index) {
                    if (index == 0) {
                      // Handle navigation to ChatScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()),
                      );
                    } else if (index == 1) {
                      // Handle navigation to PdfUploadScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PdfUploadScreen()),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
