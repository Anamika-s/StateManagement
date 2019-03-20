using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
if(Request.QueryString["name"] !=null)
            {
                TextBox1.Text = Request.QueryString["name"].ToString();

            }
            if (Request.QueryString["address"] !=null)
            {
                TextBox1.Text = Request.QueryString["address"].ToString();

            }*/
            if (Application["NAME"] != null)
                Response.Write(Application["NAME"].ToString());
         // TextBox1.Text =   Request.Cookies["name"].Value.ToString();
         if(Session["name"] != null)
            {
                TextBox1.Text = Session["name"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("AAA");
        }
    }
}