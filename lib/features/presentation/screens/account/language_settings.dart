import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({super.key});

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  String _selectedLanguage = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/settings');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Language',style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),),
            SizedBox(
              height: 24,
            ),
            Text('Language' , style: Theme.of(context).textTheme.bodyLarge,),
            languageListTile(
              context,
              title: "English",
              value: "English",
            ),
            Divider(
              height: 1,
              color: Color(0xFFEAEAEA),
            ),
            languageListTile(
              context,
              title: "Vietnamese",
              value: "Vietnamese",
            ),
            Divider(
              height: 1,
              color: Color(0xFFEAEAEA),
            ),
            languageListTile(
              context,
              title: "French",
              value: "French",
            ),

          ],
        ),
      ),
    );
  }

 ListTile languageListTile(
      BuildContext context, {
        required String title,
        required String value,
      }) {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0 , vertical: 0),

      leading: Text(title, style: Theme.of(context).textTheme.displaySmall,),
      trailing: Radio(
      splashRadius: 20.0,
      value: value,

      groupValue: _selectedLanguage,
      onChanged: (value) {
        setState(() {
          _selectedLanguage = value!;
        });
      }
    )

    );

  }
}
