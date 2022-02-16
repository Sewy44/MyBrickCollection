using MyBrickCollection.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBrickCollection.Data.Interfaces
{
    public interface IBrickSetRepository
    {
        List<BrickSet> GetMinifigs();
        BrickSet GetById(int brickSetId);
        void Insert(BrickSet brickSet);
        void Update(BrickSet brickSet);
        void Delete(int brickSetId);
    }
}
