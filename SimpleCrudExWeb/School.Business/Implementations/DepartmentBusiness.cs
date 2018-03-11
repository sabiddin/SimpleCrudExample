using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using School.Entities;
using School.Business.Interfaces;
using School.DataAccess.Interfaces;

namespace School.Business.Implementations
{
    public class DepartmentBusiness : IDepartmentBusiness
    {
        private IDepartmentDataAccess _departmentDataAccess;
        public DepartmentBusiness(IDepartmentDataAccess departmentDataAccess)
        {
            _departmentDataAccess = departmentDataAccess;
        }       
        public List<Department> GetDepartments()
        {
            List<Department> departments = new List<Department>();
            DataTable dataTable = _departmentDataAccess.GetDepartments();
            foreach (DataRow row  in dataTable.Rows)
            {
                Department department = new Department();
                department.ID = Convert.ToInt32(row["ID"].ToString());
                department.DepartmentCode = row["DepartmentCode"].ToString();
                department.DepartmentDescription = row["DepartmentDescription"].ToString();
                departments.Add(department);
            }
            return departments;
        }
        public List<Department> GetDepartmentsByCode(string Code)
        {
            List<Department> departments = new List<Department>();
            DataTable dataTable = _departmentDataAccess.GetDepartmentsByCode(Code);
            foreach (DataRow row in dataTable.Rows)
            {
                Department department = new Department();
                department.ID = Convert.ToInt32(row["ID"].ToString());
                department.DepartmentCode = row["DepartmentCode"].ToString();
                department.DepartmentDescription = row["DepartmentDescription"].ToString();
                departments.Add(department);
            }
            return departments;
        }
    }
}
