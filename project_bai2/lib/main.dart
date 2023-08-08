import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Không sử dụng const ở đây
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListScreen(),
    );
  }
}

class Product {
  final String name;
  final String description;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Điện thoại vivo',
      description: 'Mô tả sản phẩm 1',
      imageUrl:
      'https://cdn.tgdd.vn/Products/Images/42/297026/vivo-v27e-tim-thumb-600x600.jpg',
    ),
    Product(
      name: 'Điện thoại iphone',
      description: 'Mô tả sản phẩm 2',
      imageUrl:
      'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/_/t_m_18.png',
    ),
    // ...Thêm sản phẩm khác khi cần
  ];

  ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách sản phẩm'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProductScreen(product: product),
                ),
              );
            },
            child: ListTile(
              title: Text(product.name),
              subtitle: Text(product.description),
            ),
          );
        },
      ),
    );
  }
}

class DetailProductScreen extends StatelessWidget {
  final Product product;

  const DetailProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết sản phẩm'),
      ),
      body: Center(
        child: Image.network(product.imageUrl),
      ),
    );
  }
}
