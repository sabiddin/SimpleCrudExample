using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace School.Entities
{
    public class Student
    {
        public int ID { get; set; }
        public string StudFirstName { get; set; }
        public string StudLastName { get; set; }
        public string StudMiddleName { get; set; }
        public Department Department { get; set; }
        public Student()
        {
            Department = new Department();
        }
    }
}
