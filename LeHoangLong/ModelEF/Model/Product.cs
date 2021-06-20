namespace ModelEF.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public int ProductID { get; set; }
        [Required]
        [StringLength(50)]
        public string ProductName { get; set; }
        [Required]
        public decimal? UnitCost { get; set; }
        [Required]
        public int? Quantity { get; set; }

        public string ProductImg { get; set; }

        [StringLength(200)]
        public string ProductDes { get; set; }
        [Required]
        public bool ProductStatus { get; set; }
        
        [StringLength(50)]
        public string CategoryID { get; set; }
   
        public virtual Category Category { get; set; }
    }
}
