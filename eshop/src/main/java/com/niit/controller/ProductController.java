package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController {

@Autowired
private ProductService productService;
@Autowired
private CategoryService categoryService;	
	
public ProductController(){
	System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
}

//http://localhost:8080/project1/admin/product/productform
@RequestMapping("/admin/product/productform")
public String getProductForm(Model model){
	System.out.println("aminside getAllProducts");
	
		model.addAttribute("product",new Product());
		System.out.println("hai");
	model.addAttribute("categories",categoryService.getCategories());
	return "productform";
}

@RequestMapping("/admin/product/addProduct")
public String saveProduct(
	@Valid  @ModelAttribute(value="product") Product product,BindingResult result,Model model){
	if(result.hasErrors())
		return "productform";
	productService.saveProduct(product);
	System.out.println("this is save");
	
	MultipartFile prodImage=product.getImage();
	if(!prodImage.isEmpty()){
		Path paths=Paths.get("D:/FurnishWorkspace/eshop/src/main/webapp/WEB-INF/resources/images/"+ product.getId()+".png");
	try {
		prodImage.transferTo(new File(paths.toString()));
	} catch (IllegalStateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
return "redirect:/all/product/getAllProducts";
}





@RequestMapping("/all/product/getAllProducts")
public String getAllProducts(Model model){
	List<Product> products=productService.getAllProducts();
	System.out.println("aminside getAllProducts");
	//Assigning list of products to model attribute products
	model.addAttribute("productList",products);
	
		return "productlist";
}


@RequestMapping("/all/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id,Model model){
	System.out.println("aminside viewproducts");
	
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
return "viewproduct";
}

@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id){
	System.out.println("aminside deleteProducts");
	
	productService.deleteProduct(id);
	return "redirect:/all/product/getAllProducts";
}



@RequestMapping("/admin/product/editform/{id}")
public String editProductForm(@PathVariable int id,Model model){
	System.out.println("aminside editform");
	
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategories());
	return "editproductform";
}
@RequestMapping("/admin/product/editProduct")
public String editProductDetails(@Valid @ModelAttribute("product") Product product,
		BindingResult result){System.out.println("aminside editproduct");
		
	if(result.hasErrors())
		return "productform";
	productService.updateProduct(product);
	return "redirect:/all/product/getAllProducts";
		}

@RequestMapping("/all/product/productsByCategory")
public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
		Model model){
	System.out.println("aminside productbycategory");
	
	List<Product> products=productService.getAllProducts();
	//Assigning list of products to model attribute products
	model.addAttribute("productList",products);
	model.addAttribute("searchCondition",searchCondition);
	return "productlist";
}


}