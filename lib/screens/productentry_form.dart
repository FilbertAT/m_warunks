import 'package:flutter/material.dart';
import 'package:m_warunks/widgets/left_drawer.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  
  // Form fields
  String _name = "";
  String _price = "";
  String _category = "";
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Produk',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Produk",
                    labelText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  maxLength: 40,
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!.trim();
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Nama tidak boleh kosong!";
                    }
                    if (value.trim().length < 3) {
                      return "Nama minimal 3 karakter!";
                    }
                    if (value.trim().length > 40) {
                      return "Nama maksimal 40 karakter!";
                    }
                    return null;
                  },
                ),
              ),
              
              // Price Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Harga",
                    labelText: "Harga",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  onChanged: (String? value) {
                    setState(() {
                      _price = value!.trim();
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Harga tidak boleh kosong!";
                    }
                    if (double.tryParse(value.trim()) == null) {
                      return "Harga harus berupa angka!";
                    }
                    if (value.trim().length > 10) {
                      return "Harga maksimal 10 digit!";
                    }
                    return null;
                  },
                ),
              ),
              
              // Category Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Kategori",
                    labelText: "Kategori",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  maxLength: 40,
                  onChanged: (String? value) {
                    setState(() {
                      _category = value!.trim();
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Kategori tidak boleh kosong!";
                    }
                    if (value.trim().length < 2) {
                      return "Kategori minimal 2 karakter!";
                    }
                    if (value.trim().length > 40) {
                      return "Kategori maksimal 40 karakter!";
                    }
                    return null;
                  },
                ),
              ),
              
              // Description Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  maxLines: 5,
                  maxLength: 1000,
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!.trim();
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    if (value.trim().length > 1000) {
                      return "Deskripsi maksimal 1000 karakter!";
                    }
                    return null;
                  },
                ),
              ),
              
              // Save Button
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Buat nanti kalo next" week kalo udah maenan server dan database,
                        // disini buat send datanya ke server ato server
                        
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Produk berhasil tersimpan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: $_name'),
                                    Text('Harga: $_price'),
                                    Text('Kategori: $_category'),
                                    Text('Deskripsi: $_description'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
