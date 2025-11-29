using SRMS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;


namespace SRMS.Views.Admin
{
    public partial class Results : System.Web.UI.Page
    {
        Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Functions();

            if (!IsPostBack) // Prevent duplicate bindings on postbacks
            {
                ShowResults();
                GetStudents();
            }
        }

        private void GetStudents()
        {
            try
            {
                string query = "SELECT DISTINCT s_id FROM Student_Tb";
                DataTable dt = Con.GetDatas(query);

                if (dt.Rows.Count > 0)
                {
                    StudentCb.DataSource = dt;
                    StudentCb.DataTextField = "s_id";
                    StudentCb.DataValueField = "s_id";
                    StudentCb.DataBind();
                    StudentCb.Items.Insert(0, new ListItem("-- Select Student --", ""));
                }
                else
                {
                    StudentCb.Items.Clear();
                    StudentCb.Items.Add(new ListItem("No Students Found", ""));
                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerHtml = "Error loading students: " + ex.Message;
            }
        }

        private void ShowResults()
        {
            try
            {
                // Ensure no duplicates in the query results
                string Query = "Select r_id as [Result Id],s_id as [Student Id],sub_1 as [Subject 1],sub_2 as [Subject 2],total as [Total],percentage as [Percentage],Class from Result_Tb";
                

                DataTable dt = Con.GetDatas(Query);

                if (dt.Rows.Count > 0)
                {
                    ResultGV.DataSource = dt;
                    ResultGV.DataBind();
                }
                else
                {
                    ResultGV.DataSource = null;
                    ResultGV.DataBind();
                }
            }
            catch (Exception ex)
            {
                ErrMsg.InnerHtml = "Error loading results: " + ex.Message;
            }
        }



        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string s_id = StudentCb.SelectedItem.ToString();
                string sub_1 = Sub1Tb.Value;
                string sub_2 = Sub2Tb.Value;
                int total = Convert.ToInt32(Sub1Tb.Value) + Convert.ToInt32(Sub2Tb.Value);
                float percentage = (total / 150) * 100;
                string Class;
                if (percentage < 50)
                {
                    Class = "Fail";
                }
                else
                {
                    Class = "Pass";
                }


                string Query = "insert into Result_Tb values('{0}','{1}','{2}','{3}','{4}','{5}')";
                Query = string.Format(Query, s_id, sub_1, sub_2, total, percentage, Class);
                Con.SetData(Query);
                ShowResults();
                ErrMsg.InnerText = "Result Added !!!";

               
                Sub1Tb.Value = "";
                Sub2Tb.Value = "";

            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}