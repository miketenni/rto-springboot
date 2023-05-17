package com.fa.Service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.fa.Entity.CurdEntity;


public interface CurdService {

	String save(HttpServletRequest req);

	List<CurdEntity> getAllData();

}
