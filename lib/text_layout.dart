import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Text(
            'About Us',
            style: GoogleFonts.quicksand(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'One of the most interesting things about flowers is they are used to express a message from the giver. In 1800s mastering the meanings behind flowers became a popular pastime.\n\n'
            'La Fleur is an online gallery for plant enthusiast as well as for those who loves to know more about the meaning, symbolism and language of flowers.',
            style: GoogleFonts.quicksand(fontSize: 20),
          ),
          Divider(),
          RichText(
            text: TextSpan(
              text: '\n\nThe Team: Vanica Cabrillos | Bianca Amor Mazarate',
              style: TextStyle(fontSize: 17, color: Colors.purple),
            ),
          )
        ],
      ),
    );
  }
}
