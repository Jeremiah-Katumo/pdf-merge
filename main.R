library(pdftools)

# Define the directory containing PDF files
pdf_directory <- "D:/My Docs"

# Manually specify the file names in the desired order
pdf_files <- c("CV_JEREMIAH_KATUMO_KURWA.pdf","SCANNED_CERT.pdf", "JEREMIAH_KCSE_CERT.pdf", "Transcript.pdf", "National Association of State Boards of Accountancy (NASBA).pdf", "MEAL DPro_Certificate of completion.pdf",
               "Survival Analysis in R.pdf", "Factor Analysis in R.pdf", "Experimental Design in R.pdf", "Analyzing Survey Data in R.pdf", "Intro to machine learning with R.pdf",
               "Machine_Learning.pdf", "Tableau Training.pdf", "Power_BI_for_Beginners.pdf", "Business analytics with Excel.pdf", "Transcript.pdf", "Data science with Python.pdf",
               "Advanced_Web_Analytics_Course.pdf", "Introduction_to_SQL.pdf")  # Replace with your filenames

# Construct the full file paths
pdf_files <- file.path(pdf_directory, pdf_files)

# Specify the output file
output_file <- file.path(pdf_directory, "merged_output.pdf")

# Merge the PDF files in the specified order
pdf_combine(pdf_files, output_file)

cat("PDF files merged successfully in the specified order into", output_file, "\n")

# Define the input and output file paths
input_file <- "path/to/your/input.pdf"
output_file <- "path/to/your/reduced_output.pdf"

# Use qpdf to compress the PDF file
pdf_compress(input_file, output_file)

cat("PDF file size reduced successfully. Compressed file saved as:", output_file, "\n")
