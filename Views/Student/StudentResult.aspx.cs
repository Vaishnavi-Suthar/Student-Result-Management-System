using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;

namespace SRMS.Views.Student
{
    public partial class StudentResult : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            FetchData();
        }
        
        private void FetchData()
        {
            StuLbl.InnerText = Login.s_id;
            NameLbl.InnerText = Login.Name;// Display Student ID
           
            GenLbl.InnerText = Login.Gender;       // Display Gender
        }
    }

    
}