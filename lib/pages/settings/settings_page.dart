import 'package:flutter/material.dart';
import 'package:musicplayerapp/animations/fade_in_slide.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            child: Text("Settings",
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
              fontSize: 25.0),
            textAlign: TextAlign.left),
          ),
          Expanded(
            child: FadeInSlide(
              duration: 0.4,
              child: SettingsList(
                sections: [
                  SettingsSection(
                      title: const Text('Common'),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: const Icon(Icons.language),
                          title: const Text('Language'),
                          value: const Text('English'),
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.cloud_outlined),
                          title: const Text('Environment'),
                          value: const Text('Production'),
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.devices_other),
                          title: const Text('Platform'),
                          onPressed: (context) {},
                          value: const Text('Music Player'),
                        ),
                        SettingsTile.switchTile(
                          onToggle: (value) {},
                          initialValue: true,
                          leading: const Icon(Icons.format_paint),
                          title: const Text('Enable custom theme'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: const Text('Account'),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: const Icon(Icons.phone),
                          title: const Text('Phone number'),
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.mail),
                          title: const Text('Email'),
                          enabled: false,
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.logout),
                          title: const Text('Sign out'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: const Text('Security'),
                      tiles: <SettingsTile>[
                        SettingsTile.switchTile(
                          onToggle: (_) {},
                          initialValue: true,
                          leading: const Icon(Icons.phonelink_lock),
                          title: const Text('Lock app in background'),
                        ),
                        SettingsTile.switchTile(
                          onToggle: (_) {},
                          initialValue: true,
                          leading: const Icon(Icons.fingerprint),
                          title: const Text('Use fingerprint'),
                          description: const Text('Allow application to access stored fingerprint IDs'),
                        ),
                        SettingsTile.switchTile(
                          onToggle: (_) {},
                          initialValue: true,
                          leading: const Icon(Icons.lock),
                          title: const Text('Change password'),
                        ),
                        SettingsTile.switchTile(
                          onToggle: (_) {},
                          initialValue: true,
                          leading: const Icon(Icons.notifications_active),
                          title: const Text('Enable notifications'),
                        ),
                      ],
                    ),
                    SettingsSection(
                      title: const Text('Misc'),
                      tiles: <SettingsTile>[
                        SettingsTile.navigation(
                          leading: const Icon(Icons.description),
                          title: const Text('Terms of Service'),
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.collections_bookmark),
                          title: const Text('Open source license'),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}