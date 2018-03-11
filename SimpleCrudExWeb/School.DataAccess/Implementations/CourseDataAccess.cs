using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using School.DataAccess.Interfaces;
using System.Configuration;

namespace School.DataAccess.Implementations
{
    public class CourseDataAccess : ICourseDataAccess
    {
        public string SchoolConnetion
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["SchoolConnection"].ToString();
            }
        }

        public DataTable GetAllCourses() {
            string sp = "sp_tblCourse_Get";
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
        public DataTable GetAllCoursesByCourseName(string CourseName) {
            string sp = "sp_tblCourse_GetByCourseName";
            DataTable dataTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@CourseName", CourseName);
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
        public DataRow GetCourseByID(int ID)
        {
            throw new NotImplementedException();
        }
        public bool AddCourse(string CourseNumber, string CourseName, string CourseDescription, int Credits, int DepartmentID)
        {
            bool success = false;
            string sp = "sp_tblCourse_Insert";
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            {
                command.Parameters.AddWithValue("@CourseNumber", CourseNumber);
                command.Parameters.AddWithValue("@CourseName", CourseName);
                command.Parameters.AddWithValue("@CourseDescription", CourseDescription);
                command.Parameters.AddWithValue("@Credits", Credits);
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
        public bool UpdateCourse(int ID, string CourseNumber, string CourseName, string CourseDescription, int Credits)
        {
            bool success = false;
            string sp = "sp_tblCourse_Update";
            using (SqlConnection connection = new SqlConnection(SchoolConnetion))
            using (SqlCommand command = new SqlCommand(sp, connection))
            {
                command.Parameters.AddWithValue("@ID", ID);
                command.Parameters.AddWithValue("@CourseNumber", CourseNumber);
                command.Parameters.AddWithValue("@CourseName", CourseName);
                command.Parameters.AddWithValue("@CourseDescription", CourseDescription);
                command.Parameters.AddWithValue("@Credits", Credits);
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
        public bool DeleteCourse(int Id)
        {
            throw new NotImplementedException();
        }
    }
}


