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
using System.Reflection;
using log4net;
using MvvmWpfApp.ViewModels;
using MahApps.Metro.Controls;

namespace MvvmWpfApp.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        private static readonly ILog Log = log4net.LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);
        public MainViewModel MainViewModel { get; set; }

        public MainWindow()
        {
            InitializeComponent();
            MainViewModel = new MainViewModel();
            ReportFormView.ReportFormVm = MainViewModel.NewReportFormVm;
            MapView.MapVm = MainViewModel.MapVm;
            Title = "Emergency";
            GraphView.GraphVm = MainViewModel.GraphVm;
            ChooseExplosionsView.ChooseExplosionsVm = MainViewModel.ChooseExplosionsVm;

            DataContext = MainViewModel;
            Closing += MainView_Closing;
        }

        private void FlipView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var flipview = ((FlipView)sender);
            switch (flipview.SelectedIndex)
            {
                case 0:
                    flipview.BannerText = "Emergency!";
                    break;
                case 1:
                    flipview.BannerText = "Map!";
                    break;
                case 2:
                    flipview.BannerText = "Statistics!";
                    break;
                case 3:
                    flipview.BannerText = "About!";
                    break;
                case 4:
                    flipview.BannerText = "Pictures!";
                    break;
            }
        }

        private void MainView_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            /*
                if (((MainViewModel)(this.DataContext)).Data.IsModified)
                if (!((MainViewModel)(this.DataContext)).PromptSaveBeforeExit())
                {
                    e.Cancel = true;
                    return;
                }
            */
            Log.Info("Closing App");
        }

        private void SelectedTabChange(object sender, RoutedEventArgs e)
        {
            int index = int.Parse(((Button)e.Source).Uid);

            //GridCursor.Margin = new Thickness((150 * index), 0, 0, 0);

            if (index == 0)
            {
                //#region toShow

                //ReportFormView.Visibility = Visibility.Visible;
                //MapView.Visibility = Visibility.Visible;

                //#endregion

                //#region toHide
                //GraphView.Visibility = Visibility.Collapsed;
                //ChooseExplosionsView.Visibility = Visibility.Collapsed;
                //#endregion

            }
            else if (index == 1)
            {
                //#region toShow
                //GraphView.Visibility = Visibility.Visible;
                //ChooseExplosionsView.Visibility = Visibility.Visible;
                //#endregion

                //#region toHide

                //ReportFormView.Visibility = Visibility.Collapsed;
                //MapView.Visibility = Visibility.Collapsed;

                //#endregion
            }
        }

        private void Map_Click(object sender, RoutedEventArgs e)
        {
            FlipViewTest.SelectedIndex = 1;
        }
        private void Stat_Click(object sender, RoutedEventArgs e)
        {
            FlipViewTest.SelectedIndex = 2;
        }
        private void About_Click(object sender, RoutedEventArgs e)
        {
            FlipViewTest.SelectedIndex = 3;
        }

        private void pic_Click(object sender, RoutedEventArgs e)
        {
            FlipViewTest.SelectedIndex = 4;
        }

        private void HomeBtn_Click(object sender, RoutedEventArgs e)
        {
            FlipViewTest.SelectedIndex =0;
        }

        private void updateGraph(object sender, EventArgs e)
        {
            MainViewModel.GraphVm = new GraphVM();
            GraphView.GraphVm = MainViewModel.GraphVm;
            GraphView.DataContext = GraphView.GraphVm;
        }
    }
}