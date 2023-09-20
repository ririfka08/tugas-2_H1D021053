import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final -nimController = TextEditingController();
  final -tahunLahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Form"),
      ), //AppBar
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(),
            _textboxNim(),
            _textboxTahunLahir(),
            _tombolSimpan(),
          ],
        )
      ),
    );
  }

  _textboxNama(){
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  _textboxNim(){
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
    );
  }

  _textboxTahunLahir(){
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunLahirController,
    );
  }

  _tombolSimpan(){
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahunSekarang = DateTime.now().year;
        int usia = tahunSekarang - tahunLahir;
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context).tampil_data(
            nama: nama,
            nim: nim,
            tahunLahir: tahunLahir,
        )));
      },
      child: const Text('Simpan'));
  }
}
