using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using Razorpay.Api;
using System.Data;

public partial class Order : System.Web.UI.Page
{
    public static int show = 0;
    private string orderId; // Declaring orderId variable at the class level

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            if (Session["Cart"] != null)
            {
                DataTable dt = (DataTable)Session["Cart"];
                if (!Page.IsPostBack)
                {
                    if (!dt.Columns.Contains("OrderNumber"))
                    {
                        DataColumn dc = new DataColumn();
                        dc.ColumnName = "OrderNumber";
                        dt.Columns.Add(dc);
                    }
                }
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Random rn = new Random();
                    dt.Rows[i]["OrderNumber"] = rn.Next();
                }
                gvorder.DataSource = dt;
                gvorder.DataBind();
                Totalprice();
                Session["Cart"] = dt;
            }
            else
            {
                divmain.Visible = false;
                dvempty.Visible = true;
            }
        }
        else
        {
            divmain.Visible = false;
            divLogin.Visible = true;
        }
        if (!IsPostBack)
        {
            // Generate orderId only if the page is not a postback
            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", 1000); // Set the default amount as an example
            input.Add("currency", "INR");
            input.Add("receipt", "12121");
            input.Add("payment_capture", 1);

            string key = "rzp_test_uQXs0CrLs3Mstq";
            string secret = "GVNzXJKW5Nw8G6EdVqvPgN7F";

            RazorpayClient client = new RazorpayClient(key, secret);
            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;

            Razorpay.Api.Order order = client.Order.Create(input);
            orderId = order["amount"].ToString(); // Get the dynamically generated amount
            Session["Cart"] = null;

        }
    }

    private void Totalprice()
    {
        decimal totalprice = 0;
        for (int i = 0; i < gvorder.Rows.Count; i++)
        {
            Label lb = this.gvorder.Rows[i].FindControl("lbltotPriceGv") as Label;
            Decimal VALUE = Convert.ToDecimal(lb.Text);
            totalprice += VALUE;
        }

        // Accessing lbltotPrice input element directly using its ID
        string script = "<script>document.getElementById('lbltotPrice').value = '" + totalprice.ToString() + "';</script>";
        ClientScript.RegisterStartupScript(this.GetType(), "TotalPriceScript", script);

    }
    protected void rzp_button1_Click(object sender, EventArgs e)
    {
        string paymentId = Request.Form["razorpay_payment_id"];
        string orderId = Request.Form["razorpay_order_id"];
        string signature = Request.Form["razorpay_signature"];
        Session["Cart"] = null;

        // Redirect to the home page
        Response.Redirect("Home.aspx");


        // Validate paymentId, orderId, and signature
        // Process the payment and update order status

        // Redirect or display a message based on payment status
    }

}
