using School.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace School.Business.Interfaces
{
    public interface IStudentBusiness
    {
        List<Student> GetStudents();
        List<Student> GetStudentsByLastName(string LastName);
        bool AddStudent(Student student);
        bool UpdateStudent(Student student);
        bool DeleteStudent(int ID);
    }
}
