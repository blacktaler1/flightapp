import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmPin extends StatefulWidget {
  const ConfirmPin({super.key});

  @override
  State<ConfirmPin> createState() => _ConfirmPinState();
}

class _ConfirmPinState extends State<ConfirmPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/set-pin');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16, top: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Confirm\nyour PIN',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 16),
            Text(
              'Enter 6 digits number for your PIN. Make sure the\ncombination is not easy to guess.',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(height: 16),
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
bool isWaiting = false;
int countdown = 60;
Timer? timer;

void startTimer() {
  isWaiting = true;
  countdown = 60;
  timer = Timer.periodic(Duration(seconds: 1), (timer) {
    if (countdown > 0) {
      setState(() {
        countdown--;
      });
    } else {
      setState(() {
        isWaiting = false;
      });
      timer.cancel();
    }
  });
}

void requestNewOTP() {
  if (!isWaiting) {
    startTimer();
    print("Yangi OTP kodi so'ralmoqda...");
  }
}

@override
void dispose() {
  timer?.cancel();
  super.dispose();
}

void _showOTPBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
            top: 16, bottom: MediaQuery.of(context).viewInsets.bottom + 80),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 60.0,
                height: 3.0,
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F6),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Verify Your Email',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black,fontSize: 24),
              ),
              const SizedBox(height: 32),
              Text('Input the OTP code sent to:',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16 , color: Color(0xff505353)),),
              const SizedBox(height: 12),
              Text(
                'j********ia@gmail.com',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black,fontSize: 16),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return Container(
                    width: 56,
                    height: 33.0,
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 4, color: Color(0xffBFBFBF)),
                      ),
                    ),
                    child: TextField(
                      autofocus: index == 0,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border:
                        OutlineInputBorder(borderSide: BorderSide.none),
                        counterText: '',
                      ),
                      onChanged: (value) {
                        if (value.length == 1 && index < 3) {
                          FocusScope.of(context).nextFocus();
                        } else if (value.isEmpty && index > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                        if (index == 3) {

                        }
                      },

                    ),
                  );
                }),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: isWaiting
                    ? null
                    : () {
                  requestNewOTP();
                },
                child: Text(
                  isWaiting
                      ? 'Send a new OTP code (${countdown}s)'
                      : 'Send a new OTP code',
                  style: TextStyle(
                      fontSize: 16,
                      color: isWaiting ? Colors.grey : Colors.blue),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

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
            autofocus: index == 0,
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
              if (value.length == 1 && index < 5) {
                FocusScope.of(context).nextFocus();
              } else if (value.isEmpty && index > 0) {
                FocusScope.of(context).previousFocus();
              }
              if (index == 5) {
                _showOTPBottomSheet(context);
              }
            },
          ),
        );
      }),
    );
  }
}
