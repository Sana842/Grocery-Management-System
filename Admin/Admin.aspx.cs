using System;
using System.Data.SqlClient;

public partial class Admin_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Call methods to retrieve counts
            int orderCount = GetOrderCount();
            int productCount = GetProductCount();
            int reviewCount = GetReviewCount();
            int registrationCount = GetRegistrationCount();

            // Set counts in respective containers
            orderCountContainer.InnerText = "Orders: " + orderCount;
            productCountContainer.InnerText = "Products: " + productCount;
            reviewCountContainer.InnerText = "Reviews: " + reviewCount;
            registrationCountContainer.InnerText = "Registrations: " + registrationCount;
        }
    }

    // Method to retrieve order count
    private int GetOrderCount()
    {
        // Implement your logic to retrieve order count from database
        return 10; // Example count
    }

    // Method to retrieve product count
    private int GetProductCount()
    {
        // Implement your logic to retrieve product count from database
        return 20; // Example count
    }

    // Method to retrieve review count
    private int GetReviewCount()
    {
        // Implement your logic to retrieve review count from database
        return 10; // Example count
    }

    // Method to retrieve registration count
    private int GetRegistrationCount()
    {
        // Implement your logic to retrieve registration count from database
        return 5; // Example count
    }
}
