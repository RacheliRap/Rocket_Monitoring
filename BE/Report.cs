using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Device.Location;



namespace BE
{
    public class Report : ICloneable, INotifyPropertyChanged
    {
        private int? id;
        private string name;
        private string address;
        private double latitude;
        private double longitude;
        private DateTime time;
        private int noiseIntensity;
        private int numOfExplosions;
        private Event _event;
        private int clusterId;

        [Key]
        public int? Id {
            get
            {
                return id;
            }
            set
            {
                id = value;
                OnPropertyChanged("Id");
            }
          }
        public string Name {
            get
            {
                return name;
            }
            set
            {
                name = value;
                OnPropertyChanged("Name");
            }
          }
        public string Address {
            get
            {
                return address;
            }
            set
            {
                address = value;
                OnPropertyChanged("Address");
            }
        }
        public double Latitude {
            get
            {
                return latitude;
            }
            set
            {
                latitude = value;
                OnPropertyChanged("Latitude");
            }
        }
        public double Longitude {
            get
            {
                return longitude;
            }
            set
            {
                longitude = value;
                OnPropertyChanged("Longitude");
            }
        }
        public DateTime Time {
            get
            {
                return time;
            }
            set
            {
                time = value;
                OnPropertyChanged("Time");
            }
        }
        public int NoiseIntensity {
            get
            {
                return noiseIntensity;
            }
            set
            {
                noiseIntensity = value;
                OnPropertyChanged("NoiseIntensity");
            }
        }
        public int NumOfExplosions {
            get
            {
                return noiseIntensity;
            }
            set
            {
                noiseIntensity = value;
                OnPropertyChanged("NoiseIntensity");
            }
        }
        public Event Event {
            get
            {
                return _event;
            }
            set
            {
                _event = value;
                OnPropertyChanged("Event");
            }
        }
        public int ClusterId
        {
            get
            {
                return clusterId;
            }
            set
            {
                clusterId = value;
                OnPropertyChanged("ClusterId");
            }
        }


        public GeoCoordinate GetCoordinate()
        {
            return new GeoCoordinate(Latitude, Longitude);
        }

        public Report()
        {
            Time = DateTime.Now;
        }

        public object Clone()
        {
            return new Report()
            {
                Id = Id,
                Name = Name,
                Address = Address,
                Latitude = Latitude,
                Longitude = Longitude,
                Time = new DateTime(Time.Ticks),
                NoiseIntensity = NoiseIntensity,
                NumOfExplosions = NumOfExplosions,
                Event = Event?.Clone() as Event,
                ClusterId = ClusterId,
            };
        }
        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }

}
