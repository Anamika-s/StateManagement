using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["count"] != null)
            {
                Response.Write("No . of current Users are : " + Application["count"].ToString());
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Application["NAME"] = "APPLICATION VARIABLE";
            Response.Redirect("WebForm2.aspx?name=" + TextBox1.Text + "&address=" + TextBox2.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["name"].Value = TextBox1.Text;
            Response.Cookies["name"].Expires = DateTime.Now.AddDays(1);

            HttpCookie aCookie = new HttpCookie("address");
            aCookie.Value = DateTime.Now.ToString();
           // aCookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(aCookie);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
              Session["name"] = TextBox1.Text;
            Session["address"] = TextBox2.Text;
            Session["aaa"] = 1;

            Response.Redirect("WebForm2.aspx");
            // Session["data"] = 
        }
    }
}