using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace School.DataAccess.Interfaces
{
    public interface IDepartmentDataAccess
    {
        DataTable GetDepartments();
        DataTable GetDepartmentsByCode(string Code);
    }
}
