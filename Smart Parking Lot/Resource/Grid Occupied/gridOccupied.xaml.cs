﻿using Smart_Parking_Lot.Resource.Grid_Occupied;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Smart_Parking_Lot.Resource
{
    /// <summary>
    /// Interaction logic for gridOccupied.xaml
    /// </summary>
    public partial class gridOccupied : UserControl
    {
        public gridOccupied()
        {
            InitializeComponent();
            gridOccupiedViewModel gridOcc = new gridOccupiedViewModel();
            this.DataContext = gridOcc;
        }
    }
}
