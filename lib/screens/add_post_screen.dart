import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';
import '../providers/post_provider.dart';
import '../models/post_model.dart';

class AddPostScreen extends StatefulWidget {
  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final _descriptionController = TextEditingController();
  final _commentController = TextEditingController();
  XFile? _pickedFile;
  String? _imageUrl;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedFile = pickedFile;
        _imageUrl = pickedFile.path;
      });
    }
  }

  Widget _buildImage() {
    if (_pickedFile != null) {
      if (kIsWeb) {
        return Image.network(_pickedFile!.path);
      } else {
        return Image.file(File(_pickedFile!.path));
      }
    } else {
      return Center(child: Text('Tap to add image'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Post')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[200],
                child: _buildImage(),
              ),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: _commentController,
              decoration: InputDecoration(labelText: 'Comment'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_imageUrl != null &&
                    _descriptionController.text.isNotEmpty &&
                    _commentController.text.isNotEmpty) {
                  final newPost = Post(
                    imageUrl: _imageUrl!,
                    description: _descriptionController.text,
                    comment: _commentController.text,
                  );
                  Provider.of<PostProvider>(context, listen: false)
                      .addPost(newPost);
                  Navigator.pop(context);
                }
              },
              child: Text('Post'),
            ),
          ],
        ),
      ),
    );
  }
}
