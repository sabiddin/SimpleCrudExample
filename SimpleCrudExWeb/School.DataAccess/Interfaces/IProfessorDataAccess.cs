using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace School.DataAccess.Interfaces
{
    public interface IProfessorDataAccess
    {
        DataTable GetProfessors();
        DataTable GetProfessorByLastName(string LastName);
        bool AddProfessor(string ProfFirstName, string ProfLastName, string ProfMiddleName, int DepartmentID);
        bool UpdateProfessor(int ID, string ProfFirstName, string ProfLastName, string ProfMiddleName,int DepartmentID);
        bool DeleteProfessor(int ID);
    }
}
