using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using School.DataAccess.Interfaces;

namespace School.DataAccess.Implementations
{
    public class DepartmentDataAccess : IDepartmentDataAccess
    {
        public string SchoolConnetion
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["SchoolConnection"].ToString();
            }
        }
        public DataTable GetDepartments()
        {
            string sp = "sp_tblDepartment_Get";
            DataTable dataTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
            {
                command.CommandType = CommandType.StoredProcedure;
                try
                {
                    dataAdapter.Fill(dataTable);
                }
                catch (SqlException sex)
                {
                    throw sex;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            return dataTable;
        }
        public DataTable GetDepartmentsByCode(string Code)
        {
            string sp = "sp_tblDepartment_GetByCode";
            DataTable dataTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Code", Code);
                try
                {
                    dataAdapter.Fill(dataTable);
                }
                catch (SqlException sex)
                {
                    throw sex;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            return dataTable;
        }
    }
}
