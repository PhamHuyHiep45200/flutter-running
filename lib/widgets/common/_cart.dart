import 'package:flutter/material.dart';
import 'package:working_app/models/card.dart';

class CardCommon extends StatelessWidget {
  final CardType infoCard;
  const CardCommon({super.key, required this.infoCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 120,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  infoCard.avatar,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(),
                    ); // Ảnh đang tải
                  },
                  errorBuilder: (context, error, stackTrace) {
                    print(
                      'Image loading error: $error',
                    ); // <--- IN RA LỖI THẬT SỰ
                    return Text(
                      'Không thể tải ảnh',
                      style: TextStyle(color: Colors.red),
                    );
                  },
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  infoCard.date,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 12,
                    fontFamily: 'itatic',
                  ),
                ),
                Text(
                  infoCard.title,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
