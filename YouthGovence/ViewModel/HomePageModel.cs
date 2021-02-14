using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YouthGovence.Models;

namespace YouthGovence
{
    public class HomePageModel
    {
        public List<News> newslist { get; set; }
        public List<ImageGallery> imglist { get; set; }
    }
}