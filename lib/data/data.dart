import '../model/category_model.dart';

// List<CategoryModel> getcategories() {
//   List<CategoryModel> category = <CategoryModel>[];
//   CategoryModel categoryModel = new CategoryModel();

//   categoryModel.categoryName = "Business";
//   categoryModel.imageUrl =
//       "https://images.unsplash.com/photo-1661956601031-4cf09efadfce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1176&q=80";

//   category.add(categoryModel);

//   CategoryModel categoryModel2 = new CategoryModel();
//   categoryModel2.categoryName = "Entertainment";
//   categoryModel2.imageUrl =
//       "https://images.unsplash.com/photo-1661956601349-f61c959a8fd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80";
//   category.add(categoryModel2);

//   return getcategories();
// }
List<CategoryModel> getcategories() {
  List<CategoryModel> category = <CategoryModel>[];

  CategoryModel categoryModel1 = new CategoryModel();
  categoryModel1.categoryName = "Business";
  categoryModel1.imageUrl =
      "https://images.unsplash.com/photo-1661956601031-4cf09efadfce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1176&q=80";
  category.add(categoryModel1);

  CategoryModel categoryModel2 = new CategoryModel();
  categoryModel2.categoryName = "Entertainment";
  categoryModel2.imageUrl =
      "https://images.unsplash.com/photo-1661956601349-f61c959a8fd4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80";
  category.add(categoryModel2);

  CategoryModel categoryModel3 = new CategoryModel();
  categoryModel3.categoryName = "General";
  categoryModel3.imageUrl =
      "https://images.unsplash.com/photo-1517341392804-5f6daad2d02d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1474&q=80";
  category.add(categoryModel3);

  CategoryModel categoryModel4 = new CategoryModel();
  categoryModel4.categoryName = "Nature";
  categoryModel4.imageUrl =
      "https://images.unsplash.com/photo-1426604966848-d7adac402bff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80";
  category.add(categoryModel4);
  return category;
}
