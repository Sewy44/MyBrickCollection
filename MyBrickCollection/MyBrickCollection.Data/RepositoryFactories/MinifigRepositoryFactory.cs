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
    public static class MinifigRepositoryFactory
    {
        public static IMinifigRepository GetRepository()
        {
            switch (Settings.GetRepositoryType())
            {
                case "Mock":
                    return new MinifigRepositoryMock();
                case "ADO":
                    return new MinifigRepositoryADO();
                default:
                    throw new Exception("Could not find valid Repository Type configuration value.");
            }
        }
    }
}
