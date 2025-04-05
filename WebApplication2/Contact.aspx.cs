using System;
using System.Drawing;
using System.Drawing.Printing;
using System.Web.UI;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Trigger the printing process when the page is loaded or through a button click
            PrintImage();
        }

        private void PrintImage()
        {
            // Path to the JPG image file (update with your image path)
            string imagePath = Server.MapPath("Images/HOPE_logo-e7dfc5c9.jpg");

            // Load the image
            System.Drawing.Image image = System.Drawing.Image.FromFile(imagePath);

            // Create a PrintDocument object
            PrintDocument printDoc = new PrintDocument();
            printDoc.PrinterSettings.PrinterName = "Microsoft Print to PDF";


            // Assign the PrintPage event handler
            printDoc.PrintPage += (s, e) =>
            {
                // Draw the image on the printing page
                e.Graphics.DrawImage(image, new Rectangle(0, 0, image.Width, image.Height));
            };

            try
            {
                // Start printing
                printDoc.Print();
            }
            catch (Exception ex)
            {
                // Handle errors (e.g., no printer installed)
                Response.Write($"Error while printing: {ex.Message}");
            }
            finally
            {
                // Dispose of the image object
                image.Dispose();
            }
        }
    }
}
