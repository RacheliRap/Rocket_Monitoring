﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace MvvmWpfApp.Models
{
    public class vpGeo
    {
        public enum Result
        {
            OK,
            ZERO_RESULTS,
            OVER_QUERY_LIMIT,
            REQUEST_DENIED,
            INVALID_REQUEST,
            UNKNOWN_ERROR

        }
        const string GGeoCodeJsonServiceUrl = "https://maps.googleapis.com/maps/api/geocode/json?address={0}&key={1}";
        public string Key { get; set; }
        public Result GeoResult { get; set; }

        public GeoResult GoogleGeoCodeInfo(Address address)
        {
            if (string.IsNullOrEmpty(Key))
            {
                throw new MissingFieldException("Your Google API Key is missing");
            }

            using (var client = new WebClient())
            {
                string formatAddress = string.Format(GGeoCodeJsonServiceUrl, EncodeAddress(address), Key);
                var result = client.DownloadString(formatAddress);
                var O = JsonConvert.DeserializeObject<GeoResult>(result);
                SetGeoResultFlag(O.Status);
                return O;
            }
        }
        private string EncodeAddress(Address address)
        {
            var sb = new StringBuilder();


            if (!string.IsNullOrEmpty(address.Address1))
                sb.Append(Uri.EscapeUriString(" " + address.Address1));

            if (!string.IsNullOrEmpty(address.Address2))
                sb.Append(Uri.EscapeUriString(" " + address.Address2));

            if (!string.IsNullOrEmpty(address.City))
                sb.Append(Uri.EscapeUriString(" " + address.City));

            if (!string.IsNullOrEmpty(address.State))
                sb.Append(Uri.EscapeUriString(" " + address.State));

            if (!string.IsNullOrEmpty(address.Zip))
                sb.Append(Uri.EscapeUriString(" " + address.Zip));


            return sb.ToString();
        }

        private void SetGeoResultFlag(string status)
        {
            switch (status)
            {
                case "OK":
                    GeoResult = Result.OK;
                    break;
                case "ZERO_RESULTS":
                    GeoResult = Result.ZERO_RESULTS;
                    break;
                case "OVER_QUERY_LIMIT":
                    GeoResult = Result.OVER_QUERY_LIMIT;
                    break;
                case "REQUEST_DENIED":
                    GeoResult = Result.REQUEST_DENIED;
                    break;
                case "INVALID_REQUEST":
                    GeoResult = Result.INVALID_REQUEST;
                    break;
                case "UNKNOWN_ERROR":
                    GeoResult = Result.UNKNOWN_ERROR;
                    break;
            }
        }


    }
}
