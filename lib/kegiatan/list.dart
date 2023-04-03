import 'package:flutter/material.dart';
import 'package:flutter_application_1/kegiatan/tambah.dart';

class list extends StatelessWidget {
  final String kegiatan;
  final String keterangan;
  final String tglMulai;
  final String tglSelesai;
  const list({super.key, required this.kegiatan, required this.keterangan, required this.tglMulai, required this.tglSelesai});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: Center(
        child: SizedBox(width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  children: [
                    const Icon(Icons.list_alt),
                    Column(
                      children: [
                        Text(kegiatan.toString(),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 30),
                          ),
                        SizedBox(width: 100,
                          child: 
                          Text(keterangan.toString()),
                          )  
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 85)),
                    Column(
                      children: [
                        SizedBox(
                        width: 50,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 18)),
                          onPressed: () {},
                          child: const Text('Work',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )),
                        Text(tglMulai),
                        Text(tglSelesai)
                      ],
                    ),
                  ],
                ),
              ),
          ],
          
        ),),
      ),
    );
  }
}