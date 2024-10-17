import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart'; 

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String userName = 'Usuário';
  String userSince = '01/01/2023'; 
  File? _profileImage; 

  
  Future<void> _editProfile() async {
    String? newName = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        String tempName = userName;
        return AlertDialog(
          title: Text('Editar Nome', selectionColor: Colors.white,),
          content: TextField(
            onChanged: (value) {
              tempName = value;
            },
            controller: TextEditingController(text: userName),
          ),
          actions: [
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.pop(context, null);
              },
            ),
            TextButton(
              child: Text('Salvar'),
              onPressed: () {
                Navigator.pop(context, tempName);
              },
            ),
          ],
        );
      },
    );

    if (newName != null && newName.isNotEmpty) {
      setState(() {
        userName = newName;
      });
    }
  }

  
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _profileImage = File(image.path);
      });
    }
  }

  
  void _showCommunities() {
    
    List<String> communities = ['Comunidade 1', 'Comunidade 2', 'Comunidade 3'];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Suas Comunidades'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: communities
                .map((community) => ListTile(
              title: Text(community),
            ))
                .toList(),
          ),
          actions: [
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Conta'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: _pickImage, 
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: _profileImage != null
                            ? FileImage(_profileImage!)
                            : const AssetImage('assets/profile_picture.png')
                        as ImageProvider,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            Card(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: const Text('Alterar nome'),
                trailing: const Icon(Icons.edit,),
                onTap: _editProfile, 
              ),
            ),
            const SizedBox(height: 20),

            Card(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: ListTile(
                textColor: Colors.white,
                title: Text('Usuário desde $userSince'),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: const Text('Suas Comunidades'),
                trailing: const Icon(Icons.group),
                onTap: _showCommunities, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
