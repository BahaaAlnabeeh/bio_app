import 'package:bio_app/widgets/custom_bio_card.dart';
import 'package:bio_app/widgets/custom_list_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BIO',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xFFC9BBCF),
                Color(0xFFD6EFED),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN1Bjs2AYrrGAQjaKoVz0Hc1PSd-WGv1MkH8LQXcjZa9U-mrHG3X-CEEvXIBli1VkLn4k&usqp=CAU'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'eLancer Flutter - 2022',
              style: GoogleFonts.cairo(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'UCAS-TI',
              style: GoogleFonts.cairo(
                fontSize: 13,
                height: 0.8,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Divider(
              thickness: 0.8,
              color: Color(0xFF898AA6),
              indent: 40,
              endIndent: 40,
              height: 50,
            ),
            const CustomBioCard(
              leadingIcon: Icons.phone_android_outlined,
              title: 'Mobile',
              subTitle: '+970-595-172-603',
              trailingIcon: Icons.call,
              marginBottom: 10,
            ),
            CustomListTileCard(
              leadingIcon: Icons.email,
              title: 'Email',
              subTitle: 'email@app.com',
              trailingIcon: Icons.send,
              marginBottom: 10,
              onActionPressed: () {
                _showMessage(context, message: 'Send Email');
              },
            ),
            CustomListTileCard(
              leadingIcon: Icons.location_history,
              title: 'Location',
              subTitle: 'Gaza',
              trailingIcon: Icons.map,
              onActionPressed: () {
                _showMessage(context, message: 'Open Map');
              },
            ),
            const Spacer(),
            Text(
              'eLancer',
              style: GoogleFonts.cairo(fontSize: 16),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        elevation: 5,
        onVisible: () => print('Visible'),
        dismissDirection: DismissDirection.horizontal,
        duration: const Duration(seconds: 3),
        padding: const EdgeInsets.all(10),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {},
          textColor: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
