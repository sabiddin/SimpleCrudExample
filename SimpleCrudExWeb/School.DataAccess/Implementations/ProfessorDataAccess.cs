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
    public class ProfessorDataAccess : IProfessorDataAccess
    {
        public string SchoolConnetion
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["SchoolConnection"].ToString();
            }
        }
        public DataTable GetProfessorByLastName(string LastName)
        {
            string sp = "sp_tblProfessor_GetByLastName";
            DataTable dataTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@ProfLastName", LastName);
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

        public DataTable GetProfessors()
        {
            string sp = "sp_tblProfessor_Get";
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
        public bool AddProfessor(string ProfFirstName, string ProfLastName, string ProfMiddleName, int DepartmentID)
        {
            bool success = false;
            string sp = "sp_tblProfessor_Insert";
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@ProfFirstName", ProfFirstName);
                command.Parameters.AddWithValue("@ProfLastName", ProfLastName);
                command.Parameters.AddWithValue("@ProfMiddleName", ProfMiddleName);
                command.Parameters.AddWithValue("@DepartmentID", DepartmentID);
                try
                {
                    connection.Open();
                    object o = command.ExecuteNonQuery();
                    if(o!=null)
                    {
                        success = true;
                    }
                }
                catch (SqlException sex)
                {
                    throw sex;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
                return success;
            }
        }
        public bool UpdateProfessor(int ID, string ProfFirstName, string ProfLastName, string ProfMiddleName, int DepartmentID)
        {
            bool success = false;
            string sp = "sp_tblProfessor_Update";
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("ID", ID);
                command.Parameters.AddWithValue("@ProfFirstName", ProfFirstName);
                command.Parameters.AddWithValue("@ProfLastName", ProfLastName);
                command.Parameters.AddWithValue("@ProfMiddleName", ProfMiddleName);
                command.Parameters.AddWithValue("@DepartmentID", DepartmentID);
                try
                {
                    connection.Open();
                    object o = command.ExecuteNonQuery();
                    if (o != null)
                    {
                        success = true;
                    }
                }
                catch (SqlException sex)
                {
                    throw sex;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
                return success;
            }
        }
        public bool DeleteProfessor(int ID)
        {
            bool success = false;
            string sp = "sp_tblProfessor_Delete";
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@ID", ID);
                try
                {
                    connection.Open();
                    object o = command.ExecuteNonQuery();
                    if (o != null)
                    {
                        success = true;
                    }
                }
                catch (SqlException sex)
                {
                    throw sex;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    connection.Close();
                }
                return success;
            }
        }
    }
}
