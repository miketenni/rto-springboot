package com.fa.Service.impl;

import java.util.List;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.fa.Entity.CurdEntity;
import com.fa.Repository.CurdRepository;
import com.fa.Service.CurdService;

@Service
public class CurdServiceImpl implements CurdService {
	
	@Resource
	 CurdRepository curdRepository;
	
	
	
	@Override
	 public String save(HttpServletRequest req) {
	  String result = "";
	 
			try {
			CurdEntity entity = new CurdEntity();
			entity.setFirstname(req.getParameter("firstname"));
			entity.setPhoneNumber(req.getParameter("phoneNumber"));
			entity.setGender(req.getParameter("gender"));
			entity.setAge(req.getParameter("age"));
			entity. setvNumber(req.getParameter("vNumber"));
			entity. setvModel(req.getParameter("vModel"));
			entity. setAddress(req.getParameter("address"));
			
			curdRepository.save(entity);
			result ="success";
			}catch (Exception e) {
				result="error";
			}
			return result;
		}



	@Override
	public List<CurdEntity>getAllData()	{
	List<CurdEntity>list=new ArrayList<CurdEntity>();
	list=curdRepository.findAll();
		return list;
	}
}
