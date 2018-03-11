using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using School.Business.Interfaces;
using School.DataAccess.Interfaces;
using School.Entities;

namespace School.Business.Implementations
{
    public class ProfessorBusiness : IProfessorBusinesss
    {
        private IProfessorDataAccess _professorDataAccess;
        public ProfessorBusiness(IProfessorDataAccess professorDataAccess)
        {
            _professorDataAccess = professorDataAccess;
        }
        public List<Professor> GetProfessors()
        {
            List<Professor> professors = new List<Professor>();
            DataTable dataTable = _professorDataAccess.GetProfessors();
            foreach (DataRow row in dataTable.Rows)
            {
                Professor professor = new Professor()
                {
                    ID = Convert.ToInt32(row["ID"].ToString()),                    
                    ProfFirstName = row["ProfFirstName"].ToString(),
                    ProfLastName = row["ProfLastName"].ToString(),
                    ProfMiddleName = row["ProfMiddleName"].ToString(),
                };
                professor.Department.ID = Convert.ToInt32(row["DepartmentID"].ToString());
                professor.Department.DepartmentCode = row["DepartmentCode"].ToString();
                professor.Department.DepartmentDescription = row["DepartmentDescription"].ToString();
                professors.Add(professor);
                professors.Add(professor);
            }
            return professors;
        }

        public List<Professor> GetProfessorsByLastName(string LastName)
        {
            List<Professor> professors = new List<Professor>();
            DataTable dataTable = _professorDataAccess.GetProfessorByLastName(LastName);
            foreach (DataRow row in dataTable.Rows)
            {
                Professor professor = new Professor()
                {
                    ID = Convert.ToInt32(row["ID"].ToString()),                    
                    ProfFirstName = row["ProfFirstName"].ToString(),
                    ProfLastName = row["ProfLastName"].ToString(),
                    ProfMiddleName = row["ProfMiddleName"].ToString(),                    
                };
                professor.Department.ID = Convert.ToInt32(row["DepartmentID"].ToString());
                professor.Department.DepartmentCode = row["DepartmentCode"].ToString();
                professor.Department.DepartmentDescription = row["DepartmentDescription"].ToString();
                professors.Add(professor);
            }
            return professors;
        }
        public bool AddProfessor(Professor professor)
        {
            return _professorDataAccess.AddProfessor(professor.ProfFirstName, professor.ProfLastName, professor.ProfMiddleName, professor.Department.ID);
        }
        public bool UpdateProfessor(Professor professor)
        {
            return _professorDataAccess.UpdateProfessor(professor.ID, professor.ProfFirstName, professor.ProfLastName, professor.ProfMiddleName, professor.Department.ID);
        }
        public bool DeleteProfessor(int ID)
        {
            return _professorDataAccess.DeleteProfessor(ID);
        }
    }
}
