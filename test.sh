go run generate_colors.go >gen
diff $1 gen_orig gen
rm gen
