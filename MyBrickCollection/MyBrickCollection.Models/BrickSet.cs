using System;

namespace MyBrickCollection.Models
{
    public class BrickSet
    {
        public int SetId { get; set; }
        public string SetName { get; set; }
        public int SetNumber { get; set; }
        public decimal Weight { get; set; }
        public decimal Length { get; set; }
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        public int ReleaseYear { get; set; }
        public DateTime PurchaseDate { get; set; }
        public decimal CurrentValue { get; set; }
        public decimal RetailPrice { get; set; }
        public int NumberOfPieces { get; set; }
        public int QuantityOwned { get; set; }
        public bool IsRetired { get; set; }
        public string SetImageFileName { get; set; }
        public Minifig Minifigs { get; set; }
    }
}
