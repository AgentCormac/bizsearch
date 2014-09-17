package com.example.bizsearch;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class BusinessController {
	
	@Autowired private BusinessDAO businessDAO;
	
	/**
	   * This handler method is invoked when
	   * http://localhost:8080/simpleweb is requested.
	   * The method returns view name "results"
	   * which will be resolved into /WEB-INF/results.jsp.
	   *  See src/main/webapp/WEB-INF/servlet-context.xml
	  */
	
	@RequestMapping(value = "/bizSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String add(@RequestParam("city") String city,@RequestParam("county") String county, @RequestParam("category") String category, Model model )
	{
		List<Business> biz = businessDAO.findSome(city,county,category);
	    model.addAttribute("biz", biz);
	    return "results";
	}

}
