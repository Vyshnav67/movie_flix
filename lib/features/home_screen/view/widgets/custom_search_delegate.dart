// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class CustomSearchDelegate extends SearchDelegate {
//   CustomSearchDelegate();

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         Navigator.pop(context);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     HomeScreenController homeScreenController = Provider.of(context);
//     return FutureBuilder(
//       future: homeScreenController.getSearchResult(query),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//         if (!snapshot.hasData ||
//             snapshot.data == null ||
//             snapshot.data!.isEmpty) {
//           return const Center(
//               child: Text(
//             "No results found",
//             style: TextStyle(color: Colors.white),
//           ));
//         } else {
//           final suggestionList = snapshot.data!;
//           return ListView.builder(
//             itemCount: suggestionList.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 subtitle: Text("data"),
//                 title: Text(suggestionList[index]!.results![index].name!),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               );
//             },
//           );
//         }
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return Container();
//   }
// }
