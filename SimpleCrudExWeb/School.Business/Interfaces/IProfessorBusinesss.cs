using School.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace School.Business.Interfaces
{
    public interface IProfessorBusinesss
    {
        List<Professor> GetProfessors();
        List<Professor> GetProfessorsByLastName(string LastName);
        bool AddProfessor(Professor professor);
        bool UpdateProfessor(Professor professor);
        bool DeleteProfessor(int ID);
    }
}
