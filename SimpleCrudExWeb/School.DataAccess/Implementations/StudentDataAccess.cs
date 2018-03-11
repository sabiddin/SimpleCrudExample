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
    public class StudentDataAccess : IStudentDataAccess
    {
        public string SchoolConnetion
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["SchoolConnection"].ToString();
            }
        }
        public DataTable GetStudentByLastName(string LastName)
        {
            string sp = "sp_tblStudent_GetByLastName";
            DataTable dataTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@StudLastName", LastName);
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

        public DataTable GetSudents()
        {
            string sp = "sp_tblStudent_Get";
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
     
       public bool AddStudent(string StudFirstName, string StudLastName, string StudMiddleName, int DepartmentID)
       {
                bool success = false;
                string sp = "sp_tblStudent_Insert";
                using (SqlConnection connection = new SqlConnection(SchoolConnetion))
                using (SqlCommand command = new SqlCommand(sp, connection))
                {
                    command.Parameters.AddWithValue("@StudFirstName", StudFirstName);
                    command.Parameters.AddWithValue("@StudLastName", StudLastName);
                    command.Parameters.AddWithValue("@StudMiddleName", StudMiddleName);
                    command.Parameters.AddWithValue("@DepartmentID", DepartmentID);
                    command.CommandType = CommandType.StoredProcedure;
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
                }
                return success;
            
        }
        public bool UpdateStudent(int ID, string StudFirstName, string StudLastName, string StudMiddleName, int DepartmentID)
        {
            
                bool success = false;
                string sp = "sp_tblStudent_Update";
                using (SqlConnection connection = new SqlConnection(SchoolConnetion))
                using (SqlCommand command = new SqlCommand(sp, connection))
                {
                    command.Parameters.AddWithValue("@ID", ID);
                    command.Parameters.AddWithValue("@StudFirstName", StudFirstName);
                    command.Parameters.AddWithValue("@StudLastName", StudLastName);
                    command.Parameters.AddWithValue("@StudMiddleName", StudMiddleName);
                    command.Parameters.AddWithValue("@DepartmentID", DepartmentID);
                    command.CommandType = CommandType.StoredProcedure;
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
                }
                return success;

            
        }
        public bool DeleteStudent(int ID)
        {
            bool success = false;
            string sp = "sp_tblStudent_Delete";

            using (SqlConnection conn = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, conn))
            {
                command.Parameters.AddWithValue("@ID", ID);
                command.CommandType = CommandType.StoredProcedure;
                try
                {
                    conn.Open();
                    object o = command.ExecuteNonQuery();
                    if (o != null)
                        success = true;
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
                    conn.Close();
                }
            }
            return success;
        }
    }
}
