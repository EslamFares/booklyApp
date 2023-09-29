import 'package:bookly/constants.dart';
import 'package:bookly/features/search/presentstion/bloc/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    SearchCubit cubit = SearchCubit.get(context);
    return TextField(
        controller: cubit.searchController,
        decoration: InputDecoration(
            enabledBorder: outLineBorder(),
            focusedBorder: outLineBorder(),
            border: outLineBorder(),
            errorBorder: outLineBorder(color: Colors.red),
            focusedErrorBorder: outLineBorder(color: Colors.red),
            hintText: 'Search catogry(sports,programming,..)',
            suffixIcon: IconButton(
                onPressed: () {
                  cubit.fetchSearchBookeRsult(
                      searchtext: cubit.searchController.text);
                },
                icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 16),
                splashRadius: 24)));
  }

  OutlineInputBorder outLineBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Kconst.kGreyTextColor, width: 3),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
