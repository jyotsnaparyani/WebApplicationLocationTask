using System;
using System.Collections.Generic;
using System.Device.Location;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationLocationTask
{
    public partial class LocationTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                double distance1stLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb1X.Text), Convert.ToDouble(tb1Y.Text));
                double distance2ndLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb2X.Text), Convert.ToDouble(tb2Y.Text));
                double distance3rdLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb3X.Text), Convert.ToDouble(tb3Y.Text));
                double distance4thLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb4X.Text), Convert.ToDouble(tb4Y.Text));
                double distance5thLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb5X.Text), Convert.ToDouble(tb5Y.Text));
                double distance6thLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb6X.Text), Convert.ToDouble(tb6Y.Text));
                double distance7thLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb7X.Text), Convert.ToDouble(tb7Y.Text));
                double distance8thLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb8X.Text), Convert.ToDouble(tb8Y.Text));
                double distance9thLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb9X.Text), Convert.ToDouble(tb9Y.Text));
                double distance10thLoc = calculateDistanceUsingGeoCoordinates(Convert.ToDouble(tbInitialX.Text), Convert.ToDouble(tbInitialY.Text), Convert.ToDouble(tb10X.Text), Convert.ToDouble(tb10Y.Text));
                List<LocationDistanceDetails> locationDistances = new List<LocationDistanceDetails>
           {
                new LocationDistanceDetails {distance = distance1stLoc,xLocation=Convert.ToDouble(tb1X.Text),yLocation=Convert.ToDouble(tb1Y.Text)},
                new LocationDistanceDetails {distance = distance2ndLoc,xLocation=Convert.ToDouble(tb2X.Text),yLocation=Convert.ToDouble(tb2Y.Text)},
                new LocationDistanceDetails {distance = distance3rdLoc,xLocation=Convert.ToDouble(tb3X.Text),yLocation=Convert.ToDouble(tb3Y.Text)},
                new LocationDistanceDetails {distance = distance4thLoc,xLocation=Convert.ToDouble(tb4X.Text),yLocation=Convert.ToDouble(tb4Y.Text)},
                new LocationDistanceDetails {distance = distance5thLoc,xLocation=Convert.ToDouble(tb5X.Text),yLocation=Convert.ToDouble(tb5Y.Text)},
                new LocationDistanceDetails {distance = distance6thLoc,xLocation=Convert.ToDouble(tb6X.Text),yLocation=Convert.ToDouble(tb6Y.Text)},
                new LocationDistanceDetails {distance = distance7thLoc,xLocation=Convert.ToDouble(tb7X.Text),yLocation=Convert.ToDouble(tb7Y.Text)},
                new LocationDistanceDetails {distance = distance8thLoc,xLocation=Convert.ToDouble(tb8X.Text),yLocation=Convert.ToDouble(tb8Y.Text)},
                new LocationDistanceDetails {distance = distance9thLoc,xLocation=Convert.ToDouble(tb9X.Text),yLocation=Convert.ToDouble(tb9Y.Text)},
                new LocationDistanceDetails {distance = distance10thLoc,xLocation=Convert.ToDouble(tb10X.Text),yLocation=Convert.ToDouble(tb10Y.Text)}
           };

                locationDistances = locationDistances.OrderBy(x => x.distance).ToList();
                lblMSG.Text = "The distances closest to furthest from Initial X and Y Location";
                printCoordinates(locationDistances);
            }
        }


        void printCoordinates(List<LocationDistanceDetails> locationDistances)
        {
            lbl1XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(0) + "," + locationDistances.Select(y => y.yLocation).ElementAt(0);
            lbl2XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(1) + "," + locationDistances.Select(y => y.yLocation).ElementAt(1);
            lbl3XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(2) + "," + locationDistances.Select(y => y.yLocation).ElementAt(2);
            lbl4XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(3) + "," + locationDistances.Select(y => y.yLocation).ElementAt(3);
            lbl5XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(4) + "," + locationDistances.Select(y => y.yLocation).ElementAt(4);
            lbl6XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(5) + "," + locationDistances.Select(y => y.yLocation).ElementAt(5);
            lbl7XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(6) + "," + locationDistances.Select(y => y.yLocation).ElementAt(6);
            lbl8XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(7) + "," + locationDistances.Select(y => y.yLocation).ElementAt(7);
            lbl9XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(8) + "," + locationDistances.Select(y => y.yLocation).ElementAt(8);
            lbl10XY.Text = "Coordinates : " + locationDistances.Select(y => y.xLocation).ElementAt(9) + "," + locationDistances.Select(y => y.yLocation).ElementAt(9);

        }

         double calculateDistanceUsingGeoCoordinates(double lon1, double lat1, double lon2, double lat2)
        {
            GeoCoordinate c1 = new GeoCoordinate(lat1,lon1);
            GeoCoordinate c2 = new GeoCoordinate(lat2, lon2);
            double distanceInKm = c1.GetDistanceTo(c2) / 1000;
            double miles = distanceInKm * 0.621371192;
            return miles;
        }


    }
}