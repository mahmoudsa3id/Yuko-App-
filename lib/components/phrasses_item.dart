import 'package:flutter/material.dart';
import 'package:yoku/models/item.dart';

class PhrassesItem extends StatelessWidget {
  const PhrassesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            /// النصوص
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// الاسم الياباني
                    Text(
                      item.JpName,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 231, 126),
                        fontSize: 14,
                        fontFamily: 'DenkOne',
                        overflow: TextOverflow.ellipsis, // يمنع خروج النص
                      ),
                      maxLines: 1,
                    ),

                    const SizedBox(height: 6),

                    /// الاسم الإنجليزي
                    Text(
                      item.EnName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'DenkOne',
                        overflow: TextOverflow.ellipsis, // يمنع الخروج
                      ),
                      maxLines: 2, // يخليه سطرين بالكثير
                    ),
                  ],
                ),
              ),
            ),

            /// زر الصوت
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  item.playSound();
                },
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                splashRadius: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
