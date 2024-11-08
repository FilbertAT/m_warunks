import 'package:flutter/material.dart';
import 'package:m_warunks/screens/productentry_form.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ProductCard extends StatelessWidget {
  // Display a card with an icon and name.

  final ItemHomepage item;

  const ProductCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Set the background color from the app's theme.
      color: item.color,
      // Make the card corners rounded.
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Action when the card is tapped.
        onTap: () {
          // Show a SnackBar message when the card is tapped.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );

          // Navigate to the appropriate route based on the button type
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryFormPage(),
              ),
            );
          }
          // You can add more navigation options here for other item names if needed
        },
        // Container to hold Icon and Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Center the icon and text within the card.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
