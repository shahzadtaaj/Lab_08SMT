using System.ComponentModel.DataAnnotations;

namespace Lab8_repo_design_SMT.Models
{
    public class Product
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Product title is required.")]
        [StringLength(50, ErrorMessage = "Title cannot exceed 50 characters.")]
        public string Title { get; set; } = string.Empty;

        [Required(ErrorMessage = "Description is required.")]
        [StringLength(50, ErrorMessage = "Description cannot exceed 50 characters.")]
        public string description { get; set; } = string.Empty;

        [StringLength(255)]
        public string image { get; set; } = string.Empty;

        [Range(0, int.MaxValue, ErrorMessage = "Price must be zero or greater.")]
        public int price { get; set; }

        [Range(0, int.MaxValue, ErrorMessage = "Quantity must be zero or greater.")]
        public int quantity { get; set; }

        [Required(ErrorMessage = "Status is required.")]
        [StringLength(20)]
        public string status { get; set; } = "A";
    }
}
