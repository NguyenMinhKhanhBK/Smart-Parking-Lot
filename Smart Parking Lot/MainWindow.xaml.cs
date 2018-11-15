using Smart_Parking_Lot.Model;
using Smart_Parking_Lot.Resource;
using Smart_Parking_Lot.ViewModel;
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
using System.Windows.Threading;

namespace Smart_Parking_Lot
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer CarLayoutTimer = new DispatcherTimer();
        public MainWindow()
        {
            InitializeComponent();
            CarLayoutTimer.Interval = new TimeSpan(0, 0, 3);
            CarLayoutTimer.Tick += UpdateCarLayout;
            CarLayoutTimer.Start();
        }

        private void UpdateCarLayout(object sender, EventArgs e)
        {
            DataProvider.Ins.Data.Dispose();
            DataProvider.Ins.Data = new CarParkingLotEntities();

            var data = DataProvider.Ins.Data.CarParkingLayouts.Where(p => p.BuildingID == MainViewModel.currentBuildingID && p.BlockID == MainViewModel.currentBlockID).ToList();
            foreach (var item in data)
                {
                switch (item.ID)
                {
                    case 1:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos1gridAvailable.Visibility = Visibility.Visible;
                                        pos1gridBooked.Visibility = Visibility.Collapsed;
                                        pos1gridOcupied.Visibility = Visibility.Collapsed;
                                        pos1gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos1gridAvailable.Visibility = Visibility.Collapsed;
                                        pos1gridBooked.Visibility = Visibility.Visible;
                                        pos1gridOcupied.Visibility = Visibility.Collapsed;
                                        pos1gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos1gridAvailable.Visibility = Visibility.Collapsed;
                                        pos1gridBooked.Visibility = Visibility.Collapsed;
                                        pos1gridOcupied.Visibility = Visibility.Visible;
                                        pos1gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos1gridAvailable.Visibility = Visibility.Collapsed;
                                        pos1gridBooked.Visibility = Visibility.Collapsed;
                                        pos1gridOcupied.Visibility = Visibility.Collapsed;
                                        pos1gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 2:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos2gridAvailable.Visibility = Visibility.Visible;
                                        pos2gridBooked.Visibility = Visibility.Collapsed;
                                        pos2gridOcupied.Visibility = Visibility.Collapsed;
                                        pos2gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos2gridAvailable.Visibility = Visibility.Collapsed;
                                        pos2gridBooked.Visibility = Visibility.Visible;
                                        pos2gridOcupied.Visibility = Visibility.Collapsed;
                                        pos2gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos2gridAvailable.Visibility = Visibility.Collapsed;
                                        pos2gridBooked.Visibility = Visibility.Collapsed;
                                        pos2gridOcupied.Visibility = Visibility.Visible;
                                        pos2gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos2gridAvailable.Visibility = Visibility.Collapsed;
                                        pos2gridBooked.Visibility = Visibility.Collapsed;
                                        pos2gridOcupied.Visibility = Visibility.Collapsed;
                                        pos2gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 3:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos3gridAvailable.Visibility = Visibility.Visible;
                                        pos3gridBooked.Visibility = Visibility.Collapsed;
                                        pos3gridOcupied.Visibility = Visibility.Collapsed;
                                        pos3gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos3gridAvailable.Visibility = Visibility.Collapsed;
                                        pos3gridBooked.Visibility = Visibility.Visible;
                                        pos3gridOcupied.Visibility = Visibility.Collapsed;
                                        pos3gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos3gridAvailable.Visibility = Visibility.Collapsed;
                                        pos3gridBooked.Visibility = Visibility.Collapsed;
                                        pos3gridOcupied.Visibility = Visibility.Visible;
                                        pos3gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos3gridAvailable.Visibility = Visibility.Collapsed;
                                        pos3gridBooked.Visibility = Visibility.Collapsed;
                                        pos3gridOcupied.Visibility = Visibility.Collapsed;
                                        pos3gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 4:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos4gridAvailable.Visibility = Visibility.Visible;
                                        pos4gridBooked.Visibility = Visibility.Collapsed;
                                        pos4gridOcupied.Visibility = Visibility.Collapsed;
                                        pos4gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos4gridAvailable.Visibility = Visibility.Collapsed;
                                        pos4gridBooked.Visibility = Visibility.Visible;
                                        pos4gridOcupied.Visibility = Visibility.Collapsed;
                                        pos4gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos4gridAvailable.Visibility = Visibility.Collapsed;
                                        pos4gridBooked.Visibility = Visibility.Collapsed;
                                        pos4gridOcupied.Visibility = Visibility.Visible;
                                        pos4gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos4gridAvailable.Visibility = Visibility.Collapsed;
                                        pos4gridBooked.Visibility = Visibility.Collapsed;
                                        pos4gridOcupied.Visibility = Visibility.Collapsed;
                                        pos4gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 5:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos5gridAvailable.Visibility = Visibility.Visible;
                                        pos5gridBooked.Visibility = Visibility.Collapsed;
                                        pos5gridOcupied.Visibility = Visibility.Collapsed;
                                        pos5gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos5gridAvailable.Visibility = Visibility.Collapsed;
                                        pos5gridBooked.Visibility = Visibility.Visible;
                                        pos5gridOcupied.Visibility = Visibility.Collapsed;
                                        pos5gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos5gridAvailable.Visibility = Visibility.Collapsed;
                                        pos5gridBooked.Visibility = Visibility.Collapsed;
                                        pos5gridOcupied.Visibility = Visibility.Visible;
                                        pos5gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos5gridAvailable.Visibility = Visibility.Collapsed;
                                        pos5gridBooked.Visibility = Visibility.Collapsed;
                                        pos5gridOcupied.Visibility = Visibility.Collapsed;
                                        pos5gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 6:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos6gridAvailable.Visibility = Visibility.Visible;
                                        pos6gridBooked.Visibility = Visibility.Collapsed;
                                        pos6gridOcupied.Visibility = Visibility.Collapsed;
                                        pos6gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos6gridAvailable.Visibility = Visibility.Collapsed;
                                        pos6gridBooked.Visibility = Visibility.Visible;
                                        pos6gridOcupied.Visibility = Visibility.Collapsed;
                                        pos6gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos6gridAvailable.Visibility = Visibility.Collapsed;
                                        pos6gridBooked.Visibility = Visibility.Collapsed;
                                        pos6gridOcupied.Visibility = Visibility.Visible;
                                        pos6gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos6gridAvailable.Visibility = Visibility.Collapsed;
                                        pos6gridBooked.Visibility = Visibility.Collapsed;
                                        pos6gridOcupied.Visibility = Visibility.Collapsed;
                                        pos6gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 7:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos7gridAvailable.Visibility = Visibility.Visible;
                                        pos7gridBooked.Visibility = Visibility.Collapsed;
                                        pos7gridOcupied.Visibility = Visibility.Collapsed;
                                        pos7gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos7gridAvailable.Visibility = Visibility.Collapsed;
                                        pos7gridBooked.Visibility = Visibility.Visible;
                                        pos7gridOcupied.Visibility = Visibility.Collapsed;
                                        pos7gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos7gridAvailable.Visibility = Visibility.Collapsed;
                                        pos7gridBooked.Visibility = Visibility.Collapsed;
                                        pos7gridOcupied.Visibility = Visibility.Visible;
                                        pos7gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos7gridAvailable.Visibility = Visibility.Collapsed;
                                        pos7gridBooked.Visibility = Visibility.Collapsed;
                                        pos7gridOcupied.Visibility = Visibility.Collapsed;
                                        pos7gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 8:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos8gridAvailable.Visibility = Visibility.Visible;
                                        pos8gridBooked.Visibility = Visibility.Collapsed;
                                        pos8gridOcupied.Visibility = Visibility.Collapsed;
                                        pos8gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos8gridAvailable.Visibility = Visibility.Collapsed;
                                        pos8gridBooked.Visibility = Visibility.Visible;
                                        pos8gridOcupied.Visibility = Visibility.Collapsed;
                                        pos8gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos8gridAvailable.Visibility = Visibility.Collapsed;
                                        pos8gridBooked.Visibility = Visibility.Collapsed;
                                        pos8gridOcupied.Visibility = Visibility.Visible;
                                        pos8gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos8gridAvailable.Visibility = Visibility.Collapsed;
                                        pos8gridBooked.Visibility = Visibility.Collapsed;
                                        pos8gridOcupied.Visibility = Visibility.Collapsed;
                                        pos8gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }


                    case 9:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos9gridAvailable.Visibility = Visibility.Visible;
                                        pos9gridBooked.Visibility = Visibility.Collapsed;
                                        pos9gridOcupied.Visibility = Visibility.Collapsed;
                                        pos9gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos9gridAvailable.Visibility = Visibility.Collapsed;
                                        pos9gridBooked.Visibility = Visibility.Visible;
                                        pos9gridOcupied.Visibility = Visibility.Collapsed;
                                        pos9gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos9gridAvailable.Visibility = Visibility.Collapsed;
                                        pos9gridBooked.Visibility = Visibility.Collapsed;
                                        pos9gridOcupied.Visibility = Visibility.Visible;
                                        pos9gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos9gridAvailable.Visibility = Visibility.Collapsed;
                                        pos9gridBooked.Visibility = Visibility.Collapsed;
                                        pos9gridOcupied.Visibility = Visibility.Collapsed;
                                        pos9gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }


                    case 11:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos11gridAvailable.Visibility = Visibility.Visible;
                                        pos11gridBooked.Visibility = Visibility.Collapsed;
                                        pos11gridOcupied.Visibility = Visibility.Collapsed;
                                        pos11gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos11gridAvailable.Visibility = Visibility.Collapsed;
                                        pos11gridBooked.Visibility = Visibility.Visible;
                                        pos11gridOcupied.Visibility = Visibility.Collapsed;
                                        pos11gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos11gridAvailable.Visibility = Visibility.Collapsed;
                                        pos11gridBooked.Visibility = Visibility.Collapsed;
                                        pos11gridOcupied.Visibility = Visibility.Visible;
                                        pos11gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos11gridAvailable.Visibility = Visibility.Collapsed;
                                        pos11gridBooked.Visibility = Visibility.Collapsed;
                                        pos11gridOcupied.Visibility = Visibility.Collapsed;
                                        pos11gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 10:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos10gridAvailable.Visibility = Visibility.Visible;
                                        pos10gridBooked.Visibility = Visibility.Collapsed;
                                        pos10gridOcupied.Visibility = Visibility.Collapsed;
                                        pos10gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos10gridAvailable.Visibility = Visibility.Collapsed;
                                        pos10gridBooked.Visibility = Visibility.Visible;
                                        pos10gridOcupied.Visibility = Visibility.Collapsed;
                                        pos10gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos10gridAvailable.Visibility = Visibility.Collapsed;
                                        pos10gridBooked.Visibility = Visibility.Collapsed;
                                        pos10gridOcupied.Visibility = Visibility.Visible;
                                        pos10gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos10gridAvailable.Visibility = Visibility.Collapsed;
                                        pos10gridBooked.Visibility = Visibility.Collapsed;
                                        pos10gridOcupied.Visibility = Visibility.Collapsed;
                                        pos10gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }

                    case 12:
                        {
                            switch (item.StatusID)
                            {
                                case 1:
                                    {
                                        pos12gridAvailable.Visibility = Visibility.Visible;
                                        pos12gridBooked.Visibility = Visibility.Collapsed;
                                        pos12gridOcupied.Visibility = Visibility.Collapsed;
                                        pos12gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 2:
                                    {
                                        pos12gridAvailable.Visibility = Visibility.Collapsed;
                                        pos12gridBooked.Visibility = Visibility.Visible;
                                        pos12gridOcupied.Visibility = Visibility.Collapsed;
                                        pos12gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                case 3:
                                    {
                                        pos12gridAvailable.Visibility = Visibility.Collapsed;
                                        pos12gridBooked.Visibility = Visibility.Collapsed;
                                        pos12gridOcupied.Visibility = Visibility.Visible;
                                        pos12gridMaintenance.Visibility = Visibility.Collapsed;
                                        break;
                                    }
                                default:
                                    {
                                        pos12gridAvailable.Visibility = Visibility.Collapsed;
                                        pos12gridBooked.Visibility = Visibility.Collapsed;
                                        pos12gridOcupied.Visibility = Visibility.Collapsed;
                                        pos12gridMaintenance.Visibility = Visibility.Visible;
                                        break;
                                    }
                            }
                            break;
                        }


                       
                }
            }
        }
    }
}
