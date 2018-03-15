using School.Business.Implementations;
using School.Business.Interfaces;
using School.DataAccess.Implementations;
using School.DataAccess.Interfaces;
using School.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataListExample : System.Web.UI.Page
{
    IStudentDataAccess studentDataAccess;
    IStudentBusiness studentBusiness;
    public enum Operation
    {
        ADD,
        UPDATE,
        DELETE
    }
    public Operation CurrentOperation { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
            //CurrentOperation = Operation.ADD;
            // ViewState["CurrentOperation"] = CurrentOperation;
            //divError.Visible = false;
            //divSuccess.Visible = false;
        }
    }

    private void BindData()
    {
        studentDataAccess = new StudentDataAccess();
        studentBusiness = new StudentBusiness(studentDataAccess);
        List<Student> students = studentBusiness.GetStudents();
        dlStudents.DataSource = students;
        dlStudents.DataBind();

        //gvStudents.DataSource = students;
        //gvStudents.DataBind();
        //gvStudents.UseAccessibleHeader = true;
        //gvStudents.HeaderRow.TableSection = TableRowSection.TableHeader;       

    }

    //protected void btnSave_Click(object sender, EventArgs e)
    //{
    //    if (Page.IsValid)
    //        Save();


    //}

    //private void Save()
    //{
    //    studentBusiness = new StudentBusiness(studentDataAccess);
    //    CurrentOperation = (Operation)ViewState["CurrentOperation"];
    //    Student student = new Student();
    //    if (CurrentOperation != Operation.ADD)
    //    {
    //        student.ID = Convert.ToInt32(txtStudentID.Text);
    //    }
    //    student.StudFirstName = txtStudentFirstName.Text;
    //    student.StudMiddleName = txtStudentMiddleName.Text;
    //    student.StudLastName = txtStudentLastName.Text;
    //    student.Department = new Department();
    //    student.Department.ID = Convert.ToInt32(ddlDepartments.SelectedValue);
    //    studentDataAccess = new StudentDataAccess();
    //    studentBusiness = new StudentBusiness(studentDataAccess);

    //    try
    //    {
    //        bool success = false;
    //        if (CurrentOperation == Operation.ADD)
    //        {
    //            success = studentBusiness.AddStudent(student);
    //            lblSuccessMessage.Text = "Student was added successfully";
    //        }
    //        else if (CurrentOperation == Operation.UPDATE)
    //        {
    //            success = studentBusiness.UpdateStudent(student);
    //            lblSuccessMessage.Text = "Student was updated successfully";
    //        }
    //        else if (CurrentOperation == Operation.DELETE)
    //        {
    //            success = studentBusiness.DeleteStudent(Convert.ToInt32(txtStudentID.Text));
    //            lblSuccessMessage.Text = "Student was delete successfully";
    //        }
    //        if (success)
    //        {
    //            divSuccess.Visible = true;
    //            BindData();
    //        }
    //        else
    //        {
    //            divError.Visible = true;
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        lblError.Text = ex.Message;
    //        divError.Visible = true;
    //    }
    //    txtStudentID.Text = string.Empty;
    //    txtStudentFirstName.Text = string.Empty;
    //    txtStudentMiddleName.Text = string.Empty;
    //    txtStudentLastName.Text = string.Empty;
    //    ddlDepartments.SelectedIndex = 0;
    //    CurrentOperation = Operation.ADD;
    //    ViewState["CurrentOperation"] = CurrentOperation;
    //}

    //protected void gvStudents_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    int rowID = Convert.ToInt32(e.CommandArgument);
    //    GridViewRow row = ((GridView)sender).Rows[rowID];
    //    Label lblStudentID = row.FindControl("lblStudentID") as Label;
    //    Label lblStudFirstName = row.FindControl("lblStudFirstName") as Label;
    //    Label lblStudMiddleName = row.FindControl("lblStudMiddleName") as Label;
    //    Label lblStudLastName = row.FindControl("lblStudLastName") as Label;
    //    Label lblDepartmentID = row.FindControl("lblDepartmentID") as Label;
    //    Label lblDepartmentDescription = row.FindControl("lblDepartmentDescription") as Label;

    //    txtStudentID.Text = lblStudentID.Text;
    //    txtStudentFirstName.Text = lblStudFirstName.Text;
    //    txtStudentMiddleName.Text = lblStudMiddleName.Text;
    //    txtStudentLastName.Text = lblStudLastName.Text;
    //    ddlDepartments.SelectedValue = lblDepartmentID.Text;
    //    CurrentOperation = (Operation)ViewState["CurrentOperation"];
    //    CurrentOperation = Operation.UPDATE;
    //    ViewState["CurrentOperation"] = CurrentOperation;
    //}

    //protected void btnDelete_Click(object sender, EventArgs e)
    //{
    //    CurrentOperation = Operation.DELETE;
    //    ViewState["CurrentOperation"] = CurrentOperation;
    //    Save();

    //}

    protected void dlStudents_EditCommand(object source, DataListCommandEventArgs e)
    {
        dlStudents.EditItemIndex = e.Item.ItemIndex;
        //dlStudents.DataBind();
        BindData();
    }

    protected void dlStudents_CancelCommand(object source, DataListCommandEventArgs e)
    {
        dlStudents.EditItemIndex = -1;
        //dlStudents.DataBind();
        BindData();
    }

    protected void dlStudents_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        Student s = new Student();
        TextBox txtID = e.Item.FindControl("txtID") as TextBox;
        TextBox txtFirstName = e.Item.FindControl("txtFirstName") as TextBox;
        TextBox txtMiddleName = e.Item.FindControl("txtMiddleName") as TextBox;
        TextBox txtLastName = e.Item.FindControl("txtLastName") as TextBox;
        DropDownList ddlDepartments = e.Item.FindControl("ddlDepartments") as DropDownList;
        s.ID = Convert.ToInt32(txtID.Text);
        s.StudFirstName = txtFirstName.Text;
        s.StudMiddleName = txtMiddleName.Text;
        s.StudLastName = txtLastName.Text;
        s.Department.ID = Convert.ToInt32(ddlDepartments.SelectedValue);
        studentDataAccess = new StudentDataAccess();
        studentBusiness = new StudentBusiness(studentDataAccess);
        bool success = studentBusiness.UpdateStudent(s);
        dlStudents.EditItemIndex = -1;
        BindData();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Student s = new Student();       
        //s.ID = Convert.ToInt32(txtID.Text);
        s.StudFirstName = txtFirstName.Text;
        s.StudMiddleName = txtMiddleName.Text;
        s.StudLastName = txtLastName.Text;
        s.Department.ID = Convert.ToInt32(ddlDepartments.SelectedValue);
        studentDataAccess = new StudentDataAccess();
        studentBusiness = new StudentBusiness(studentDataAccess);
        bool success = studentBusiness.AddStudent(s);        
        BindData();
        divAdd.Visible = false;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        divAdd.Visible = false;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        divAdd.Visible = true;
    }
   
}