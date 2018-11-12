using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Smart_Parking_Lot.Model
{
    public class CurrentCustomer
    {
        public int STT { get; set; }
        public string DisplayName { get; set; }
        public string LicensePlate { get; set; }
        public string Status { get; set; }
        public string PhoneNumber { get; set; }
        public Nullable<DateTime> ReservedTime { get; set; }
        public Nullable<DateTime> ArrivalTime { get; set; }
    }

}
