﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebApp.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApp.DB.Tests
{
    [TestClass()]
    public class TickMarkTests
    {
        [TestMethod()]
        public void TickMarkTest()
        {
            TickMark tick = new TickMark("Test", 0);

            Assert.AreEqual("Test", tick.GetName());
            Assert.AreEqual(0, tick.GetXPlacement());
        }
    }
}