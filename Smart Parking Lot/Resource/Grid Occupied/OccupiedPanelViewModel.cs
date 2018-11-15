﻿using Smart_Parking_Lot.Model;
using Smart_Parking_Lot.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Smart_Parking_Lot.Resource.Grid_Occupied
{
   public class OccupiedPanelViewModel: ViewModel.BaseViewModel
    {
        #region COMMAND
        public ICommand MoveCommand { get; set; }
        public ICommand AcceptCommand { get; set; }
        public ICommand CancelCommand { get; set; }
        #endregion

        private string _posID;
        public string posID { get => _posID; set { _posID = value; OnPropertyChanged(); } }

        private string _customerPhoneNumber;
        public string customerPhoneNumber { get => _customerPhoneNumber; set { _customerPhoneNumber = value; OnPropertyChanged(); } }
        private string _plateNumber;
        public string plateNumber { get => _plateNumber; set { _plateNumber = value; OnPropertyChanged(); } }

        public OccupiedPanelViewModel()
        {
            MoveCommand = new RelayCommand<object>((p) => { return true; }, (p) => { Window a = p as Window; a.DragMove(); });
            AcceptCommand = new RelayCommand<object>((p) => { return true; }, (p) => { Accept(p as Window); });
            CancelCommand = new RelayCommand<object>((p) => { return true; }, (p) => { Window a = p as Window; a.Close(); });
        }

        void Accept(Window a)
        {
            int posid = int.Parse(posID);
            var b = DataProvider.Ins.Data.CarParkingLayouts.Where(p => p.BlockID == MainViewModel.currentBlockID && p.BuildingID == MainViewModel.currentBuildingID && p.ID == posid).FirstOrDefault();
            b.StatusID = 4;
            DataProvider.Ins.Data.SaveChanges();
            a.Close();
        }
    }
}
