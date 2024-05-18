import 'package:cloud_firestore/cloud_firestore.dart';

class TaskService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Add a new task
  addTask(Map<String, dynamic> taskData) async {
    await _firestore.collection('tasks').add(taskData);
  }

  // Update a task
  Future<void> updateTask(String taskId, Map<String, dynamic> taskData) async {
    await _firestore.collection('tasks').doc(taskId).update(taskData);
  }

  // Delete a task
  Future<void> deleteTask(String taskId) async {
    await _firestore.collection('tasks').doc(taskId).delete();
  }

  // Get all tasks
  Stream<QuerySnapshot> getTasks() {
    return _firestore.collection('tasks').snapshots();
  }
}
