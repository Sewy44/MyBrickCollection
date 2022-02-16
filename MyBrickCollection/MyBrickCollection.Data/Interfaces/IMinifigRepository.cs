using MyBrickCollection.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyBrickCollection.Data.Interfaces
{
    public interface IMinifigRepository
    {
        List<Minifig> GetMinifigs();
        Minifig GetById(int minifigId);
        void Insert(Minifig minifig);
        void Update(Minifig minifig);
        void Delete(int minifigId);
    }
}
