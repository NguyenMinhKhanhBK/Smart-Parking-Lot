using Smart_Parking_Lot.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Smart_Parking_Lot.ViewModel
{
    class CurrentCustomerViewModel : BaseViewModel
    {
        private ObservableCollection<CurrentCustomer> _currentCustomerList;
        public ObservableCollection<CurrentCustomer> currentCustomerList { get => _currentCustomerList; set { _currentCustomerList = value; OnPropertyChanged(); } }

        public CurrentCustomerViewModel()
        {
           
            currentCustomerList = new ObservableCollection<CurrentCustomer>();
            var LayoutTableList = DataProvider.Ins.Data.CarParkingLayouts.Where(p=>p.StatusID!=1);
            int i = 0;
            foreach (var item in LayoutTableList)
            {

                i++;
                var STT = i;
                var DisplayName = "";
                var LicensePlate = "";
                var Status = DataProvider.Ins.Data.PositionStatus.Where(p => p.ID == item.StatusID).FirstOrDefault().PositionStatus;
                var PhoneNumber = "";
                Nullable<DateTime> ReservedTime = null;
                Nullable<DateTime> ArrivalTime = null;

                if (item.ReservedTime != null) ReservedTime = (DateTime)item.ReservedTime;
                if (item.ArrivalTime != null) ArrivalTime = (DateTime)item.ArrivalTime;

                if (item.UserID != null)
                {
                    var UserInfo = DataProvider.Ins.Data.Users.Where(p => p.ID == item.UserID).FirstOrDefault();
                    DisplayName = UserInfo.DisplayName;
                    LicensePlate = item.LicensePlate;
                    PhoneNumber = UserInfo.Username;
                }

                CurrentCustomer currentItem = new CurrentCustomer();
                currentItem.STT = STT;
                currentItem.DisplayName = DisplayName;
                currentItem.LicensePlate = LicensePlate;
                currentItem.Status = Status;
                currentItem.PhoneNumber = PhoneNumber;
                currentItem.ReservedTime = ReservedTime;
                currentItem.ArrivalTime = ArrivalTime;

                currentCustomerList.Add(currentItem);
            }
        }
    }
}
