using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace School.DataAccess.Interfaces
{
    public interface IStudentDataAccess
    {
        DataTable GetSudents();
        DataTable GetStudentByLastName(string LastName);
        bool AddStudent(string StudFirstName, string StudLastName, string StudMiddleName, int DepartmentID);
        bool UpdateStudent(int ID, string StudFirstName, string StudLastName, string StudMiddleName, int DepartmentID);
        bool DeleteStudent(int ID);
    }
}
