using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace School.Entities
{
    public class Professor
    {        
        public int ID { get; set; }
        public string ProfFirstName { get; set; }
        public string ProfLastName { get; set; }
        public string ProfMiddleName { get; set; }
        public Department Department { get; set; }
        public Professor()
        {
            Department = new Department();
        }
    }
}
