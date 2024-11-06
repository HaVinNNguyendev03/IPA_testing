import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:app_hospital/services/Authservice.dart';
AuthService authService = new AuthService();
class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, required this.funtionReturnString});
  
  final Future<String?> Function(BuildContext context, String? email, String? password) funtionReturnString;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade300),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 26),
      ),
      onPressed: () async{
      // Gọi hàm funtionReturnString với email và password là rỗng, nếu không cần sử dụng email và password.
      String? email = null;  // Hoặc lấy giá trị từ input
      String? password = null;
      await funtionReturnString(context, email, password);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/image/icongoogle.png', 
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 10),
          Text(
            "Google",
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}