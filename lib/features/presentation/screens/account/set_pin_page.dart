import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SetPinPage extends StatefulWidget {
  const SetPinPage({super.key});

  @override
  State<SetPinPage> createState() => _SetPinPageState();
}

class _SetPinPageState extends State<SetPinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/security-settings');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Set Pin',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Enter 6 digits number for your PIN. Make sure the\ncombination is not easy to guess.',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(
              height: 16,
            ),
            PinInput(),
          ],
        ),
      ),
    );
  }
}

class PinInput extends StatefulWidget {
  const PinInput({super.key});

  @override
  _PinInputState createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(6, (index) {
        return Container(
          padding: EdgeInsets.only(bottom: 10),
          color: Color(0xffF4F4F4),
          width: 45.0,
          height: 33.0,
          child: TextField(
            autofocus: true,
            controller: controllers[index],
            textAlign: TextAlign.center,

            maxLength: 1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              counterText: '',
            ),
            onChanged: (value) {
              print(value);
              if (value.length == 1 && index < 5) {
                FocusScope.of(context).nextFocus();
              } else if(value.isEmpty && index < 7){
                FocusScope.of(context).previousFocus();
              }else if(index==5){
                context.go('/confirm-pin');
              }
            },
          ),
        );
      }),
    );
  }
}
