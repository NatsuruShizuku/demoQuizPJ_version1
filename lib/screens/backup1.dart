// return WillPopScope(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Obx(() =>
//                 Text(questionCategoryState.value.name.replaceAll('\n', ' '))),
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     OutlinedButton(
//                         onPressed: () => onAnswerSheetClick(),
//                         child: const Column(
//                           children: [Icon(Icons.note), Text('Answer Sheet')],
//                         )),
//                     CountDown(
//                       animation: StepTween(begin: limitTime, end: 0)
//                           .animate(_controller),
//                       listenable: _controller,
//                     ),
//                     ElevatedButton(
//                         onPressed: () => onSubmitExamClick(),
//                         child: const Column(
//                           children: [Icon(Icons.done), Text('Submit')],
//                         )),
//                   ],
//                 ),
//                 FutureBuilder(
//                   future: getQuestionForExamp(),
//                   builder: (context, snapshot) {
//                     if (snapshot.hasError) {
//                       return Center(
//                         child: Text('Error: ${snapshot.error}'),
//                       );
//                     } else if (snapshot.hasData) {
//                       var questions = snapshot.data as List<Question>;
//                       isEmptyQuestion.value = questions.isEmpty;
//                       return questions.isEmpty
//                           ? const Center(
//                         child: Text(
//                             'This category contains no question'),
//                       )
//                           : Container(
//                         margin: const EdgeInsets.all(4),
//                         child: Card(
//                           elevation: 8,
//                           child: Container(
//                             padding: const EdgeInsets.only(
//                                 left: 4,
//                                 right: 4,
//                                 bottom: 4,
//                                 top: 10),
//                             child: SingleChildScrollView(
//                               child: Column(
//                                 children: [
//                                   QuestionBody(
//                                     context: context,
//                                     controller:
//                                     buttonCarouselController,
//                                     questions: questions,
//                                     userAnswers: userAnswer,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     } else {
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//                   },
//                 )
//               ],
//             ),
//           ),
//         ),
//         onWillPop: () async {
//           showCloseExamDialog();
//           return true;
//         });
  