
namespace gregslist_csharp.Repositories
{
    public class HousesRepository
    {

        private readonly IDbConnection _db;

        public HousesRepository(IDbConnection db)
        {
            _db = db;
        }

        internal List<House> getHouses()
        {
            string sql = "SELECT * FROM houses;";

            List<House> houses = _db.Query<House>(sql).ToList();

            return houses;
        }




    }
}