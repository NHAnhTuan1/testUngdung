namespace TestUngdung.ModelEF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [Key]
        [StringLength(100)]
        public string userAcc { get; set; }

        [Required]
        [StringLength(100)]
        public string password { get; set; }

        [StringLength(1000)]
        public string Email { get; set; }

        [StringLength(100)]
        public string Fullname { get; set; }
    }
}
