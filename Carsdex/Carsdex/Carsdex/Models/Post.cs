namespace Carsdex.Models
{
    public class Post
    {
        public int Id { get; set; }
        public string? Markenname { get; set; }
        public string? Modelname { get; set; }
        public DateOnly Datum { get; set; }
        public string? Ort { get; set; }
    }
}
