package com.virtusa.faculty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.faculty.dao.FacultyDaoIface;
import com.virtusa.faculty.dao.FacultyDaoImpl;
import com.virtusa.faculty.models.Faculty;

@Service
public class FacultyServiceImpl implements FacultyServiceIface{

	@Autowired
	FacultyDaoIface facultyDaoIface;
	public String insertFaculty(Faculty faculty) {
		// TODO Auto-generated method stub
		return facultyDaoIface.insertFaculty(faculty);
	}

	public List<Faculty>showFaculty(Faculty faculty) {
		// TODO Auto-generated method stub
		return facultyDaoIface.showFaculty(faculty);
	}

	public String updateFaculty(Faculty faculty) {
		// TODO Auto-generated method stub
		return facultyDaoIface.updateFaculty(faculty);
	}

	public Faculty showDetailService(String empno) {
		// TODO Auto-generated method stub
		return facultyDaoIface.showDetail(empno);
	}

	
}
