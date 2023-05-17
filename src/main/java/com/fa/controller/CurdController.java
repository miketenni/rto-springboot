package com.fa.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fa.Entity.CurdEntity;
import com.fa.Service.CurdService;

@Controller
public class CurdController {
	
	@Resource
	CurdService curdService;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView ref=new ModelAndView("home");
		return ref;
	    }
	
	
	@RequestMapping(value = "/save", method = RequestMethod.GET)
	
	public ModelAndView save(HttpServletRequest req) {
		
		String result = curdService.save(req);
		
		System.out.println(result);
		ModelAndView ref=new ModelAndView("home");
		ref.addObject("result",result);
	    return ref;
	    		
	}
	
	@RequestMapping(value = "/htmltable", method = RequestMethod.GET)
	public ModelAndView htmltable( ) {
		ModelAndView ref = new ModelAndView("htmltable");
		List<CurdEntity>listofEntity=curdService.getAllData();
		ref.addObject("tablelist",listofEntity);
				return ref;
		
				
	}

	@RequestMapping(value = "/datatable", method = RequestMethod.GET)
	public ModelAndView datatable() {
		ModelAndView ref=new ModelAndView("datatable");
		List<CurdEntity>listofEntity=curdService.getAllData();
		ref.addObject("tablelist",listofEntity);
		return ref;
	    }
//	dataTableUsingAjax
	@RequestMapping(value = "/dataTableUsingAjax", method = RequestMethod.GET)
	public ModelAndView dataTableUsingAjax() {
		ModelAndView ref=new ModelAndView("dataTableUsingAjax");
		return ref;
	    }
	
}
