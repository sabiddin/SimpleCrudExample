using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using School.Entities;

namespace School.Business.Interfaces
{
    public interface ICourseBusiness
    {
        /// <summary>
        /// This method will receive the data in the form of a DataTable returned
        /// by the DataAccess. It is supposed to iterate through each row in the dataTable
        /// and create a new Course entity and set all the properties with their respective value
        /// extracted from the row being iterated. Once all the properties is set this entity is 
        /// then supposed ro be added to the list of courses and returned to the caller.
        /// </summary>
        /// <returns>List of Courses found in the Course table</returns>
        List<Course> GetAllCourses();

        /// <summary>
        /// This method will receive the data in the form of a DataTable returned
        /// by the DataAccess. It is supposed to iterate through each row in the dataTable
        /// and create a new Course entity and set all the properties with their respective value
        /// extracted from the row being iterated. Once all the properties is set this entity is 
        /// then supposed ro be added to the list of courses and returned to the caller.
        /// </summary>
        /// <param name="CourseName">Some chacaters that the course name may contain</param>
        /// <returns>List of All possible courses whose name may contain the charaters provided in the CourseName</returns>
        List<Course> GetAllCoursesByCourseName(string CourseName);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        Course GetCourseByID(int ID);
       
        /// <summary>
        /// Course to be added
        /// </summary>
        /// <param name="course">Course to be added</param>
        /// <returns>Success= true if no error else false</returns>
        bool AddCourse(Course course);
        
        /// <summary>
        /// Adds a course to database
        /// </summary>
        /// <param name="course">Course to be updated</param>
        /// <returns>Success= true if no error else false</returns>
        bool UpdateCourse(Course course);
        
        /// <summary>
        /// Deletes a course found at the ID provieded
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        bool DeleteCourse(int Id);
    }
}
