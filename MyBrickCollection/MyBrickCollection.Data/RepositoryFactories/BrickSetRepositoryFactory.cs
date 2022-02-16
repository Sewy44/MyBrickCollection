using MyBrickCollection.Data.Interfaces;
using MyBrickCollection.Data.Repositories.ADO;
using MyBrickCollection.Data.Repositories.Mock;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBrickCollection.Data.RepositoryFactories
{
    public static class BrickSetRepositoryFactory
    {
        public static IBrickSetRepository GetRepository()
        {
            switch (Settings.GetRepositoryType())
            {
                case "Mock":
                    return new BrickSetRepositoryMock();
                case "ADO":
                    return new BrickSetRepositoryADO();
                default:
                    throw new Exception("Could not find valid Repository Typ configuration value.");
            }
        }
    }
}
