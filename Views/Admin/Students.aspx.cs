using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using SRMS.Models; // Ensure this matches your namespace

namespace SRMS.Views.Admin
{
    public partial class Students : System.Web.UI.Page
    {
        Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions(); // Instantiate the Functions class
            if (!IsPostBack)
            {
                PopulateGenderDropdown(); // Populate Gender dropdown
                PopulateSemesterDropdown(); // Populate Semester dropdown
                ShowStudents();
            }
        }

        private void PopulateGenderDropdown()
        {
            GenderCb.Items.Clear();
            GenderCb.Items.Add(new ListItem("Select Gender", "")); // Add default value
            GenderCb.Items.Add(new ListItem("Male", "Male"));
            GenderCb.Items.Add(new ListItem("Female", "Female"));
            GenderCb.Items.Add(new ListItem("Other", "Other"));
        }

        private void PopulateSemesterDropdown()
        {
            SemTb.Items.Clear();
            SemTb.Items.Add(new ListItem("Select Semester", ""));
            for (int i = 1; i <= 8; i++) // Assuming there are 8 semesters
            {
                SemTb.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }


        private void ShowStudents()
        {
            string Query = "Select s_id as[Enrollment No],s_name as [Name],gender as [Gender],s_dob as [Date of Borth],course as [Course],clg_name as [Collage Name]," +
                "s_rollno as [Roll No],s_sem as [Semester],s_year as [Acadamic Year],email as [Email],pwd as [Password],s_phone as [Mobile No] from Student_Tb";
            StudentGV.DataSource= Con.GetDatas(Query);
            StudentGV.DataBind();
        }

       

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string s_id = StuTb.Value;
                string s_name = NameTb.Value;
                string gender = GenderCb.SelectedItem.ToString();
                string s_dob = DOBTb.Value;
                string course = CourseTb.Value;
                string clg_name = CnameTb.Value;
                string s_rollno = RnTb.Value;
                string s_sem = SemTb.SelectedItem.ToString();
                string s_year = YearTb.Value;
                string email = EmailTb.Value;
                string pwd = PwdTb.Value;
                string s_phone = MonTb.Value;

                string Query = "insert into Student_Tb values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')";
                Query = string.Format(Query, s_id, s_name, gender, s_dob, course, clg_name, s_rollno, s_sem, s_year, email, pwd, s_phone);
                Con.SetData(Query);
                ShowStudents();
                ErrMsg.InnerText = "Students Added !!!";

                StuTb.Value = "";
                NameTb.Value = "";
                DOBTb.Value = "";
                EmailTb.Value = "";
                PwdTb.Value = "";
                MonTb.Value = "";

            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void StudentGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            StuTb.Value = StudentGV.SelectedRow.Cells[1].Text;
            NameTb.Value = StudentGV.SelectedRow.Cells[2].Text;

            // Safely set Gender dropdown
            ListItem genderItem = GenderCb.Items.FindByText(StudentGV.SelectedRow.Cells[3].Text);
            if (genderItem != null)
            {
                GenderCb.SelectedValue = genderItem.Value;
            }
            else
            {
                GenderCb.SelectedIndex = 0; // Default to "Select Gender" if value not found
            }

            DOBTb.Value = StudentGV.SelectedRow.Cells[4].Text;
            CourseTb.Value = StudentGV.SelectedRow.Cells[5].Text;
            CnameTb.Value = StudentGV.SelectedRow.Cells[6].Text;
            RnTb.Value = StudentGV.SelectedRow.Cells[7].Text;

            // Safely set Semester dropdown
            ListItem semesterItem = SemTb.Items.FindByText(StudentGV.SelectedRow.Cells[8].Text);
            if (semesterItem != null)
            {
                SemTb.SelectedValue = semesterItem.Value;
            }
            else
            {
                SemTb.SelectedIndex = 0; // Default to "Select Semester" if value not found
            }

            YearTb.Value = StudentGV.SelectedRow.Cells[9].Text;
            EmailTb.Value = StudentGV.SelectedRow.Cells[10].Text;
            PwdTb.Value = StudentGV.SelectedRow.Cells[11].Text;
            MonTb.Value = StudentGV.SelectedRow.Cells[12].Text;
        }


        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string s_id = StuTb.Value;
                string s_name = NameTb.Value;
                string gender = GenderCb.SelectedValue; // Safely fetch SelectedValue
                string s_dob = DOBTb.Value;
                string course = CourseTb.Value;
                string clg_name = CnameTb.Value;
                string s_rollno = RnTb.Value;
                string s_sem = SemTb.SelectedValue; // Safely fetch SelectedValue
                string s_year = YearTb.Value;
                string email = EmailTb.Value;
                string pwd = PwdTb.Value;
                string s_phone = MonTb.Value;

                string Query = "update Student_Tb set s_name='{0}',gender='{1}',s_dob='{2}',course='{3}',clg_name='{4}',s_rollno='{5}',s_sem='{6}',s_year='{7}',email='{8}',pwd='{9}',s_phone='{10}' where s_id='{11}'";
                Query = string.Format(Query, s_name, gender, s_dob, course, clg_name, s_rollno, s_sem, s_year, email, pwd, s_phone, s_id);
                Con.SetData(Query);
                ShowStudents();
                ErrMsg.InnerText = "Students Updated!";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = $"Error: {ex.Message}"; // Include detailed error message
            }

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string s_id = StuTb.Value;
                

                string Query = "delete from Student_Tb where s_id = '{0}'";
                Query = string.Format(Query, s_id);
                Con.SetData(Query);
                ShowStudents();
                ErrMsg.InnerText = "Students Deleted !!!";

                StuTb.Value = "";
                NameTb.Value = "";
                DOBTb.Value = "";
                EmailTb.Value = "";
                PwdTb.Value = "";
                MonTb.Value = "";

            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}
