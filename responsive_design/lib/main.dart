//Syed Ali Imran - 2380254

import 'package:flutter/material.dart';

void main() {
  runApp(const CreativeResponsiveApp());
}

class CreativeResponsiveApp extends StatelessWidget {
  const CreativeResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creative Responsive UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'User Dashboard',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          drawer: isPortrait ? const NavigationMenuWidget() : null,
          body: isPortrait
              ? const ProfileDetailsWidget()
              : const Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: NavigationMenuWidget(isStandalone: true),
                    ),
                    VerticalDivider(width: 1, thickness: 1),
                    Expanded(
                      flex: 2,
                      child: ProfileDetailsWidget(),
                    ),
                  ],
                ),
        );
      },
    );
  }
}

class NavigationMenuWidget extends StatelessWidget {
  final bool isStandalone;

  const NavigationMenuWidget({super.key, this.isStandalone = false});

  @override
  Widget build(BuildContext context) {
    final listContent = ListView(
      padding: EdgeInsets.zero,
      children: [
        if (!isStandalone)
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.dashboard_rounded, size: 36, color: Theme.of(context).colorScheme.primary),
                const SizedBox(height: 12),
                Text(
                  'Workspace Menu',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ListTile(
          leading: const Icon(Icons.person_outline),
          title: const Text('Personal Info'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.security),
          title: const Text('Security & Privacy'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.notifications_none),
          title: const Text('Notifications'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.code),
          title: const Text('Developer Settings'),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.logout, color: Colors.red),
          title: const Text('Log Out', style: TextStyle(color: Colors.red)),
          onTap: () {},
        ),
      ],
    );

    if (isStandalone) {
      return Container(
        color: Theme.of(context).colorScheme.surfaceContainerHighest.withOpacity(0.3),
        child: listContent,
      );
    }

    return Drawer(child: listContent);
  }
}

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                      child: Icon(
                        Icons.computer_rounded,
                        size: 70,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Syed Ali Imran',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Software Engineer',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey.shade600,
                        ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    icon: const Icon(Icons.edit),
                    label: const Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}