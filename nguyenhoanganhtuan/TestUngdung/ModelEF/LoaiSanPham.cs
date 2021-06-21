namespace TestUngdung.ModelEF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiSanPham")]
    public partial class LoaiSanPham
    {
        [StringLength(50)]
        public string id { get; set; }

        [StringLength(100)]
        public string Ten { get; set; }

        [StringLength(50)]
        public string LoaiSP { get; set; }
    }
}
