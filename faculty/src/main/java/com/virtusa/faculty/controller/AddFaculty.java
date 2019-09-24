package com.virtusa.faculty.controller;

import java.util.Date;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.faculty.service.FacultyServiceIface;
import com.virtusa.faculty.service.FacultyServiceImpl;
import com.virtusa.faculty.models.Faculty;

@Controller
public class AddFaculty {

	private static final Object Faculty = null;
	@Autowired
	FacultyServiceIface facultyServiceIface;
	
	@RequestMapping("/facultypart")
	public String fac(Model m)
	{
		return "Faculty";
	}
	@RequestMapping("/insert")
	public String taketoInsert(Model m) {
		//System.out.println("cgfcfg");
		//m.addAttribute("facultyinfo",new Faculty());
		return "FacultyReg";
	}
	
	@RequestMapping("/ins")
	//public String InsertInfo(@RequestParam("empno") String empno,@RequestParam("firstname") String firstname,@RequestParam("lastname") String lastname,@RequestParam("dob") Date dateOfBirth,@RequestParam("email") String email,@RequestParam("mobilenumber") String mobileNumber,@RequestParam("qualification") String qualification,@RequestParam("ee") String experience,@RequestParam("department") String department,@RequestParam("gender") String gender,@RequestParam("city") String city,@RequestParam("state") String state,Model m)
	public ModelAndView insertinfo(@ModelAttribute("facultyinfo")Faculty faculty)
	{
		/*Faculty faculty=new Faculty();
		faculty.setEmpno(empno);
		faculty.setFirstname(firstname);
		faculty.setLastname(lastname);
		faculty.setDateOfBirth(dateOfBirth);
		faculty.setEmail(email);
		faculty.setMobileNumber(mobileNumber);
		faculty.setQualification(qualification);
		faculty.setDepartment(department);
		faculty.setExperience(experience);
		faculty.setGender(gender);
		faculty.setCity(city);
		faculty.setState(state);*/
		//ModelAndView m=new ModelAndView();
		
		//m.addAttribute("name","success");
		System.out.println("cgfcfg");
		if(facultyServiceIface.insertFaculty(faculty)!=null)
		{
			return new ModelAndView("viewpage","name","success");
		}
		return null;
		
	}
	/*
	 * @RequestMapping("/show") public String taketoShow(Model m) {
	 * 
	 * return "showReg"; }
	 * 
	 * @RequestMapping("/sh") public ModelAndView Library(@ModelAttribute("myForm")
	 * Faculty faculty,Model m) { List l= facultyServiceIface.showFaculty(faculty);
	 * 
	 * System.out.println(faculty.getEmpno());
	 * 
	 * //System.out.println(f.getEmail()); if(l==null) { return new
	 * ModelAndView("ShowFaculty","msg","No Records Found"); } return new
	 * ModelAndView("ShowFaculty","fac",l); }
	 */
	
	@RequestMapping("/show")
	public ModelAndView showInfo() {
		ModelAndView modelAndView=new ModelAndView("showReg","facultyinfo",new Faculty());
		return modelAndView;
	}
	@RequestMapping("/showall")
	public ModelAndView showFaculty(@ModelAttribute("facultyinfo") Faculty faculty,Model model)
	{ 
		//System.out.println(faculty.getEmpno());
		List<Faculty> l= facultyServiceIface.showFaculty(faculty);
		//System.out.println(l);
	 //System.out.println(faculty.getEmpno());
	 if(l.isEmpty()) {
	 return new ModelAndView("ShowFaculty","msg","No Records Found"); 
	 }
	return new  ModelAndView("ShowFaculty","fac",l);
	}
	
	
	@RequestMapping("/Facultyupdate/{eno}")
	@ResponseBody
	public ModelAndView takeToReg1(@PathVariable("eno") String empno) {
		//System.out.println(faculty.getCity()+" Controller");
		//Faculty faculty = new Faculty();
		System.out.println(empno);
		//System.out.println(faculty.getDateOfBirth().getClass());
		Faculty faculty2=facultyServiceIface.showDetailService(empno);
		
		return new ModelAndView("UpdateFaculty","fac",faculty2);
	}        
	@RequestMapping(value = "/Facultyupdate/Update",method = RequestMethod.GET)
	public String update(@ModelAttribute("upd") Faculty faculty, Model m) {
		System.out.println("dsdasdd");
		System.out.println(faculty.getEmpno());
		String s=facultyServiceIface.updateFaculty(faculty);
		
		if(s==null) {
			//System.out.println(result.getAllErrors());
			m.addAttribute("updated","not updated");
			return "UpdateFaculty";
		}else {
			m.addAttribute("updated","updated");
			return "successupdate";
		}                                                                                
	}
}
