package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.product.dao.ProductDao;
import com.product.entities.Product;

@Controller
public class MainController {

	@Autowired
	ProductDao productDao;

	@RequestMapping("/")
	public String home(Model model) {
		List<Product> allProducts = productDao.getAllProducts();
		model.addAttribute("allProducts", allProducts);
		return "index";
	}

	@RequestMapping("/addproduct")
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "addproductform";
	}

	// handle add product form
	@RequestMapping(value = "/handleproduct", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDao.saveProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	// delete handler
	@RequestMapping("/deleteproduct/{id}")
	public RedirectView deleteProduct(@PathVariable("id") int id, HttpServletRequest request) {
		productDao.deleteProduct(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("/updateproduct/{id}")
	public String updateProduct(@PathVariable("id") int id, Model model) {
		Product product = this.productDao.getSingleProduct(id);
		model.addAttribute("product", product);
		return "updateproduct";
	}

}
