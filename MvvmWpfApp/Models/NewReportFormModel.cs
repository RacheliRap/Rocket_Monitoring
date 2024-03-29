﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using BE;
using BL;
using MvvmWpfApp.Utils;

namespace MvvmWpfApp.Models
{
    public class NewReportFormModel
    {
        private readonly IBl _bl;
        public Report Report { get; set; }

        public NewReportFormModel()
        {
            _bl = new FactoryBl().GetInstance();

            Report = new Report
            {
                Name = "SHIR",
                Id = 1234,
                Address = "Beit Hadfus 5, Jerusalem",
                Latitude = 101.1,
                Longitude = 12.34
            };
            AddReport();

        }

        public async void AddReport()
        {
            var res = await _bl.AddReport(Report);
            var message = res != null ?
                $"The Report: {res.Id}\nFrom: {res.Name}\nOn: {res.Time} Saved Successfully!" :
                "Something went wrong when trying to add report!";
            MessageBox.Show(message);
        }

    }
}
