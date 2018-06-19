using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace virtdbnx.Models
{
    public class virtdbnxContext : DbContext
    {
        public virtdbnxContext (DbContextOptions<virtdbnxContext> options)
            : base(options)
        {
        }

        public DbSet<virtdbnx.Models.Movie> Movie { get; set; }
    }
}
