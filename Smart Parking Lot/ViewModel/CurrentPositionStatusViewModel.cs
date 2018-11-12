using Smart_Parking_Lot.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Smart_Parking_Lot.ViewModel
{
    class CurrentPositionStatusViewModel: BaseViewModel
    {
        private int _available;
        public int available { get=>_available; set { _available = value;OnPropertyChanged(); } }
        private int _booked;
        public int booked { get => _booked; set { _booked = value; OnPropertyChanged(); } }
        private int _occupied;
        public int occupied { get => _occupied; set { _occupied = value; OnPropertyChanged(); } }
        private int _maintenance;
        public int maintenance { get => _maintenance; set { _maintenance = value; OnPropertyChanged(); } }

        public CurrentPositionStatusViewModel()
        {
            available = DataProvider.Ins.Data.CarParkingLayouts.Where(p => p.StatusID == 1).ToList().Count;
            booked = DataProvider.Ins.Data.CarParkingLayouts.Where(p => p.StatusID == 2).ToList().Count;
            occupied = DataProvider.Ins.Data.CarParkingLayouts.Where(p => p.StatusID == 3).ToList().Count;
            maintenance = DataProvider.Ins.Data.CarParkingLayouts.Where(p => p.StatusID == 4).ToList().Count;
        }
    }
}
