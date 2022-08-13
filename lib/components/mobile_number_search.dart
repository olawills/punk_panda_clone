import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class MobileNumberInput extends StatefulWidget {
  const MobileNumberInput({Key? key}) : super(key: key);

  @override
  State<MobileNumberInput> createState() => _MobileNumberInputState();
}

class _MobileNumberInputState extends State<MobileNumberInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: CountryCodePicker(
          initialSelection: 'IN',
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          showFlagMain: true,
          hideSearch: false,
          alignLeft: true,
          searchDecoration: const InputDecoration(
            labelText: 'Enter country name or code',
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
