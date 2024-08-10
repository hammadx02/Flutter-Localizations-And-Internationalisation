import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations_and_internationalisation/controller/language_change_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Languange { english, spanish }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.helloWorld,
        ),
        actions: [
          Consumer<LanguageChangeController>(
            builder: (context, provider, child) {
              return PopupMenuButton(
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<Languange>>[
                  const PopupMenuItem(
                    value: Languange.english,
                    child: Text('English'),
                  ),
                  const PopupMenuItem(
                    value: Languange.spanish,
                    child: Text('Spanish'),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
