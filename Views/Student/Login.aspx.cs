using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SRMS.Views.Student
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con= new Models.Functions();
        }

        public static string s_id, Name, Gender;

        public static object RollNo { get; internal set; }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string Query = "Select s_id,s_name,gender from Student_Tb where s_id ='{0}'";
            Query = string.Format(Query, StuTb.Value);
            DataTable dt = Con.GetDatas(Query);

            if (dt.Rows.Count == 0)
            {
                ErrMsg.InnerText = "Invalid Username or Password  !!";
            }
            else
            {
                s_id = dt.Rows[0][0].ToString();
                Name = dt.Rows[0][1].ToString();
                Gender = dt.Rows[0][2].ToString();
                Response.Redirect("StudentResult.aspx");
            }
        }
    }
}