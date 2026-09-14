import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const blue = Color(0xff1976d2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text('My Profile'),
        leading: const Icon(Icons.arrow_back),
        actions: const [Icon(Icons.more_vert), SizedBox(width: 16)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 40),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 76,
              backgroundColor: Color(0xffeeeeee),
              child: CircleAvatar(
                radius: 72,
                backgroundColor: Color(0xffb8d4e8),
                child: Icon(Icons.person, size: 82, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ahmed Hassan',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18, color: blue),
            ),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _Info(Icons.location_on, 'Cairo, Egypt'),
                Container(height: 28, width: 1, color: Colors.black12),
                const _Info(Icons.cake, '25 Years'),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(164, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 28),
            const Divider(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About Me',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Flutter developer who loves\nbuilding beautiful mobile apps.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 22),
            const Divider(),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _Stat(Icons.star, '4.8', 'Rating', Colors.amber),
                _Stat(Icons.business_center, '3 Years', 'Experience', blue),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

class _Info extends StatelessWidget {
  const _Info(this.icon, this.text);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Icon(icon, color: ProfileScreen.blue, size: 23),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat(this.icon, this.value, this.label, this.color);

  final IconData icon;
  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }
}
