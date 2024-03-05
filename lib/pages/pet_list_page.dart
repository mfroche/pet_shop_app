import 'package:first_app/constants.dart';
import 'package:first_app/pages/product_details_page.dart';
import 'package:first_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class PetListPage extends StatelessWidget {
  const PetListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          //SEARCHBAR USING TEXTFIELD
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search product or brand',
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Color.fromRGBO(242, 243, 242, 1),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),

          //PET ITEMS
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 18.0,
                mainAxisSpacing: 13.0,
                mainAxisExtent: 200,
              ),
              itemCount: PRODUCTS.length,
              itemBuilder: (context, index) {
                final product = PRODUCTS[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ProductDetailsPage(product: product);
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ProductCard(
                      breed: product.breed,
                      price: product.price.toString(),
                      imgUrl: product.imgUrl,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
