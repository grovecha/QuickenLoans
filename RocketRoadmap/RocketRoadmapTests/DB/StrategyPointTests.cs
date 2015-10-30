﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using RocketRoadmap.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RocketRoadmap.DB.Tests
{
    [TestClass()]
    public class StrategyPointTests
    {
        [TestMethod()]
        public void StrategyPointTest()
        {
            StrategyPoint sp = new StrategyPoint("Test", "TEST", "Test");

            Assert.AreEqual("Test", sp.GetName());
            Assert.AreEqual("TEST", sp.GetDescription());

            List<BusinessValue> values = sp.GetBusinessValues();
            Assert.AreEqual(1, values.Count());
        }

        [TestMethod()]
        public void EditStrategyPointTest()
        {
            StrategyPoint sp = new StrategyPoint("Test", "TEST", "Test");

            Assert.IsTrue(sp.EditDescription("NEW"));
            Assert.AreEqual("NEW", sp.GetDescription());

            Assert.IsTrue(sp.EditName("NEW"));
            Assert.AreEqual("NEW", sp.GetName());

            StrategyPoint testsp = new StrategyPoint("NEW", "NEW", "NEW");
            Assert.AreEqual("NEW", sp.GetName());
            Assert.AreEqual("NEW", sp.GetDescription());

            Assert.IsTrue(sp.EditName("Test"));
            Assert.IsTrue(sp.EditDescription("TEST"));
        }

        [TestMethod()]
        public void Create_DeleteStrategyPointTest()
        {
            RoadMap map = new RoadMap("Test");
            StrategyPoint strat = new StrategyPoint("NEW","NEW", "Test");

            Assert.IsTrue(map.AddStrategyPoint(strat));

            Assert.IsTrue(map.DeleteStrategyPoint(strat));

        }

                [TestMethod()]
        public void ReOrderTest()
        {
            RoadMaps maps = new RoadMaps();
            maps.CreateRoadMap("busboxtest", "test123", "test");
            RoadMap newroadmap = new RoadMap("busboxtest");
            StrategyPoint strat1 = new StrategyPoint("StratBox0", "first", "busboxtest");

            newroadmap.AddStrategyPoint(strat1);

            BusinessValue bis1 = new BusinessValue("StratBox0BusBox0","busboxtest");
            BusinessValue bis2 = new BusinessValue("StratBox0BusBox1","busboxtest");
            BusinessValue bis3 = new BusinessValue("StratBox0BusBox2","busboxtest");

            strat1.CreateBuisnessValue("StratBox0BusBox0","first","busboxtest");
            strat1.CreateBuisnessValue("StratBox0BusBox1","second","busboxtest");
            strat1.CreateBuisnessValue("StratBox0BusBox2","fourth","busboxtest");

            strat1.ReorderBusinessValue("StratBox0BusBox2","third",true);
            strat1.ReloadBusinessValues();
            List<BusinessValue> list = strat1.GetBusinessValues();
            Assert.IsTrue(list.Last().GetName() == "StratBox0BusBox3");
            maps.DeleteRoadMap("busboxtest");
        }
              
        [TestMethod()]
                public void DeleteBVTest()
                {
                    RoadMaps maps = new RoadMaps();
                    maps.CreateRoadMap("busboxtest", "test123", "test");
                    RoadMap newroadmap = new RoadMap("busboxtest");
                    StrategyPoint strat1 = new StrategyPoint("StratBox0", "first", "busboxtest");

                    newroadmap.AddStrategyPoint(strat1);
                    strat1.CreateBuisnessValue("StratBox0BusBox0", "first", "busboxtest");
                    strat1.CreateBuisnessValue("StratBox0BusBox1", "second", "busboxtest");
                    strat1.CreateBuisnessValue("StratBox0BusBox2", "fourth", "busboxtest");
                    
                    strat1.DeleteBusinessValue("StratBox0BusBox0");
                    strat1.ReloadBusinessValues();
                    List<BusinessValue> bvlist = strat1.GetBusinessValues();
                    Assert.IsTrue(strat1.GetBusinessValues().Last().GetName() == "StratBox0BusBox1");
                }

        }
        }
