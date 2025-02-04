library(magick)
library(pdftools)

# Specify the list of JPEG files
jpeg_files <- list.files(path = "/home/jeremy/Downloads/ID/", pattern = "*.jpeg", full.names = TRUE)

# Convert each JPEG file to a PDF
pdf_files <- sapply(jpeg_files, function(img) {
  pdf_path <- sub(".jpeg$", ".pdf", img)  # Change file extension
  image <- image_read(img)  # Read JPEG
  image_write(image, path = pdf_path, format = "pdf")  # Convert to PDF
  return(pdf_path)
})

# Merge PDFs into a single PDF
output_pdf <- "combined_output.pdf"
pdf_combine(pdf_files, output = output_pdf)

# Optional: Remove individual PDF files after merging
file.remove(pdf_files)

print(paste("PDF saved as:", output_pdf))
