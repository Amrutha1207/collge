package com.virtusa.faculty.service;

import java.util.List;

import com.virtusa.faculty.models.Faculty;

public interface FacultyServiceIface {
	String insertFaculty(Faculty faculty);
	List<Faculty> showFaculty(Faculty faculty);
	Faculty showDetailService(String empno);
	String updateFaculty(Faculty faculty);
}
