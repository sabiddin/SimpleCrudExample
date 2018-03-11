using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace School.DataAccess.Interfaces
{
    public interface ICourseDataAccess
    {
        DataTable GetAllCourses();
        DataTable GetAllCoursesByCourseName(string CourseName);
        DataRow GetCourseByID(int ID);
        bool AddCourse(string CourseNumber, string CourseName, string CourseDescription, int Credits,int DepartmentID);
        bool UpdateCourse(int Id, string CourseNumber, string CourseName, string CourseDescription, int Credits);
        bool DeleteCourse(int Id);
    }
}
