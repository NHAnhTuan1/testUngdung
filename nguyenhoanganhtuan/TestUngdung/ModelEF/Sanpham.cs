namespace TestUngdung.ModelEF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sanpham")]
    public partial class Sanpham
    {
        [StringLength(50)]
        public string id { get; set; }

        [StringLength(100)]
        public string Ten { get; set; }

        public int? Gia { get; set; }
    }
}
