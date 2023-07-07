using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApplication
{
    public partial class DemoGrid2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        protected void Button1_Command(object sender, CommandEventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;
            if (e.CommandName == "A")
            {
                Label1.Text = Button1.CommandArgument;
            }
            else if (e.CommandName == "B")
            {
                Label1.Text = Button2.CommandArgument;
            }

            if (CheckBox1.Checked == true)
            {
                Label2.Text = "CheckBox1 is checked.";
            }
            else
            {
                Label2.Text = "Checkbox1 is not checked.";
            }
        }
        protected void chkred_CheckedChanged(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;
            Label3.Text = "Red CheckBox is checked";
            chkgreen.Checked = false;
        }

        protected void chkgreen_CheckedChanged(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;
            Label3.Text = "Green CheckBox is checked";
            chkred.Checked = false;
        }
        protected void Button2_Command(object sender, CommandEventArgs e)

        {

            MultiView1.ActiveViewIndex = 1;
            Label4.Text = "Value is " + DropDownList1.SelectedValue + " and selected item is " + DropDownList1.SelectedItem;
        }

        protected void btnview1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        protected void btnview2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}