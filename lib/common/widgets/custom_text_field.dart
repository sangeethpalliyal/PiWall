import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.textHint,
    this.iconName = null,
  });
  final String labelText;
  final String textHint;
  final IconData ? iconName;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                cursorColor: Colors.white,
                
                decoration: InputDecoration(
                  
                  label: new  Text(labelText),
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: textHint,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(iconName,color: Colors.grey,),
                ),
              ),
            ],
          ),
        );
  }
}
