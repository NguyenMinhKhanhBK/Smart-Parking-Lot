using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Threading;

namespace Smart_Parking_Lot.ViewModel
{
    public class CarLayoutViewModel: BaseViewModel
    {
        DispatcherTimer timerLayout = new DispatcherTimer();
        public CarLayoutViewModel()
        {
            //timerLayout.Interval = new TimeSpan(0, 0, 5);
            //timerLayout.Tick += UpdateData;
            //timerLayout.Start();
            
        }

        private void UpdateData(object sender, EventArgs e)
        {
            //throw new NotImplementedException();
        }

        void UpdateLayout()
        {
            
        }

        void ChangeUserControl(int status,int pos)
        {
            //pos11gridBooked
            //pos11gridOcupied
            //pos11gridAvailable
            //pos11gridMaintenance

           
        }
    }
}
