// ignore_for_file: non_constant_identifier_names, file_names

// ignore: camel_case_types
class productModel {
  final String prod_name_ar;
  final String prod_name_en;
  final String prod_img;

  productModel(
      {required this.prod_name_ar,
      required this.prod_name_en,
      required this.prod_img});
}

List<productModel> products = [
  productModel(prod_name_ar: 'بيبسي', prod_name_en: "pepsi", prod_img: 'lib/assets/Pepsi.png'),
  productModel(prod_name_ar: 'كوكاكولا', prod_name_en: "cocacola", prod_img: 'lib/assets/cocacola.png'),
  productModel(prod_name_ar: 'سفن اب', prod_name_en: "7up", prod_img: 'lib/assets/7up.png'),
  productModel(prod_name_ar: 'ستينح', prod_name_en: "sting", prod_img: 'lib/assets/sting.webp'),
  productModel(prod_name_ar: 'شويبس', prod_name_en: "schweppes", prod_img: 'lib/assets/schweppes.png'),
  productModel(prod_name_ar: 'فانتا', prod_name_en: "fanta", prod_img: 'lib/assets/fanta.png'),
  productModel(prod_name_ar: 'اكوافينا', prod_name_en: "aquafina", prod_img: 'lib/assets/aquafina.png'),
  productModel(prod_name_ar: 'اريال', prod_name_en: "ariel", prod_img: 'lib/assets/ariel.png'),
  productModel(prod_name_ar: 'تيدي', prod_name_en: "tide", prod_img: 'lib/assets/tide.png'),
  productModel(prod_name_ar: 'فيري', prod_name_en: "fairy", prod_img: 'lib/assets/fairy.png'),
  productModel(prod_name_ar: 'ريكسونا', prod_name_en: "rexona", prod_img: 'lib/assets/rexona.png'),
  productModel(prod_name_ar: 'بامبرز', prod_name_en: "pampers", prod_img: 'lib/assets/pampers.jpg'),
  productModel(prod_name_ar: 'نيدو', prod_name_en: "nido", prod_img: 'lib/assets/nido.png'),
  productModel(prod_name_ar: 'سيريلاك', prod_name_en: "cerelac", prod_img: 'lib/assets/cerelac.jpg'),
  productModel(prod_name_ar: 'دانون', prod_name_en: "danone", prod_img: 'lib/assets/danon.png'),
  productModel(prod_name_ar: 'طعمه', prod_name_en: "teama", prod_img: 'lib/assets/teama.webp'),
  productModel(prod_name_ar: 'كيري', prod_name_en: "kiri", prod_img: 'lib/assets/kiry.png'),
  productModel(prod_name_ar: 'بريزيدن', prod_name_en: "president", prod_img: 'lib/assets/president.jpg'),
  productModel(prod_name_ar: 'بيك رولز', prod_name_en: "bakerolz", prod_img: 'lib/assets/bakerolz.png'),
  productModel(prod_name_ar: 'صن بايتس', prod_name_en: "sunbites", prod_img: 'lib/assets/sunbites.jpg'),
  productModel(prod_name_ar: 'شيتوس', prod_name_en: "cheetos", prod_img: 'lib/assets/cheetos.png'),
  productModel(prod_name_ar: 'ليز', prod_name_en: "lays", prod_img: 'lib/assets/lays.png'),
  productModel(prod_name_ar: 'كت كات', prod_name_en: "kitkat", prod_img: 'lib/assets/kitkat.png'),
  productModel(prod_name_ar: 'ديري ميلك', prod_name_en: "diry milk", prod_img: 'lib/assets/dirymilk.png'),
  productModel(prod_name_ar: 'نسكويك', prod_name_en: "nesquik", prod_img: 'lib/assets/nesquik.png'),
  productModel(prod_name_ar: 'نسكافيه', prod_name_en: "nescafe", prod_img: 'lib/assets/nescafe.png'),
  productModel(prod_name_ar: 'تريدنت', prod_name_en: "trident", prod_img: 'lib/assets/trident.jpg'),
  productModel(prod_name_ar: 'كلورتس', prod_name_en: "clorets", prod_img: 'lib/assets/clorets.jpg'),
  productModel(prod_name_ar: 'تشكلتس', prod_name_en: "chiclets", prod_img: 'lib/assets/chiclets.jpg'),
];
