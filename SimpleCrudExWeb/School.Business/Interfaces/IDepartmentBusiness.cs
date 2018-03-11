using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using School.Entities;

namespace School.Business.Interfaces
{
    public interface IDepartmentBusiness
    {
        List<Department> GetDepartments();
        List<Department> GetDepartmentsByCode(string Code);
    }
}
