using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApplication
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string connetionString;
            SqlConnection cnn;

            connetionString = @"Data Source=NAYLINHTOOPC;Initial Catalog=Demodb ;User ID=sa;Password=root";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            Response.Write("Connection Made" + "</br>");


            //CREATE

            //SqlCommand command;
            //SqlDataAdapter adapter = new SqlDataAdapter();
            //String sql = "";
            //sql = "Insert into demotb(TutorialName) values('"+"VB.Net"+"')";
            //command = new SqlCommand(sql, cnn);
            //adapter.InsertCommand = new SqlCommand(sql, cnn);
            //adapter.InsertCommand.ExecuteNonQuery();

            //cnn.Close();



            // Update

            //SqlCommand command;
            //SqlDataAdapter adapter = new SqlDataAdapter();
            //String sql = "";
            //String update_string = "VB.Net Complete";
            ////sql = "Update demotb set TutorialName='"+update_string+"' where TutorialID=3";
            //sql = "Update demotb set TutorialName='" + "Complete" + "' where TutorialID=3";
            //command = new SqlCommand(sql, cnn);
            //adapter.InsertCommand = new SqlCommand(sql, cnn);
            //adapter.InsertCommand.ExecuteNonQuery();
            //cnn.Close();

            // Delete

      //      SqlCommand command;
      //      SqlDataAdapter adapter = new SqlDataAdapter();
      //      String sql = "";

      //      sql = "Delete demotb where TutorialID=3";

      //      command = new SqlCommand(sql, cnn);

      //      adapter.DeleteCommand = new SqlCommand(sql, cnn);
      //      adapter.DeleteCommand.ExecuteNonQuery();

      //      command.Dispose();
		    //cnn.Close();


            //GET INDEX

            //SqlCommand command;
            //SqlDataReader dataReader;
            //String sql, Output = " ";
            //sql = "Select TutorialID,TutorialName from demotb";

            //command = new SqlCommand(sql, cnn);
            //dataReader = command.ExecuteReader();
            //while (dataReader.Read())
            //{
            //    Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            //}

            //Response.Write(Output);
            //dataReader.Close();
            //cnn.Close();

        }
    }
}