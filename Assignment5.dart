List<String> completedTask(taskList) {
  List<String> completedTasks = [];
  String taskName = "";
  for (Map task in taskList) {
    for (String key in task.keys) {
      if (task[key] == true) {
        completedTasks.add(task[taskName]);
        break;
      } else {
        taskName = key;
      }
    }
  }
  return completedTasks;
}

List<String> checkSubmissionDate(taskList) {
  List<String> completeTask = [];
  for (Map task in taskList) {
    if (task["submissionDate"] > 10 && task["submissionDate"] < 20) {
      completeTask.add(task["taskName"]);
    }
  }
  return completeTask;
}

void main() {
  print("===== Assignment 05 ====");

  // ----- Initializing list of tasks ------ //

  var listOfTasks = [
    {
      "taskName": "Do Assignment 5",
      "isCompleted": false,
      "submissionDate": 29,
    },
    {
      "taskName": "Do Assignment 4",
      "isCompleted": true,
      "submissionDate": 26,
    },
    {
      "taskName": "Do Assignment 3",
      "isCompleted": true,
      "submissionDate": 19,
    },
    {
      "taskName": "Do Assignment 2",
      "isCompleted": false,
      "submissionDate": 12,
    },
    {"taskName": "Do Assignment 1", "isCompleted": true, "submissionDate": 5}
  ];

// ---- Calling completedTask function ---- //
  List<String> completed = completedTask(listOfTasks);
  print("List of completed task are: \n");
  for (String task in completed) {
    print("Task: $task");
  }

// ---- Task between 10 and 20 ---- //
  List<String> submission = checkSubmissionDate(listOfTasks);
  print("\nList of tasks completed between 10 and 20\n");
  for (String task in submission) {
    print("Task: $task");
  }

  // --- assigning completed to complete tasks ---- //
  List<String> complete = completedTask(listOfTasks);
  print("\nList of completed task are: \n");
  for (String task in complete) {
    print("Task: $task Completed !");
  }

  // ---- For each to display all records ---- //
  print("\nPrinting all tasks: \n");
  for (var task in listOfTasks) {
    task.forEach((key, value) => print("$key : $value "));
    print("\n");
  }
}
