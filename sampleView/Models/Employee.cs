using System;
using System.Collections.Generic;

namespace sampleView.Models
{
    public partial class Employee
    {
        public int Id { get; set; }
        public string? Firstname { get; set; }
        public string? Lastname { get; set; }
        public int? CountryId { get; set; }
        public int? Gender { get; set; }
        public int? DepartmentId { get; set; }
        public int? UniveristyId { get; set; }
    }
}
