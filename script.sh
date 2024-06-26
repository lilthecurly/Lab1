output_file="branch_heads.txt"
echo "HEAD information for all branches:" > $output_file

# Получите список всех веток (локальных и удаленных) и запишите информацию о их HEAD
for branch in $(git branch -r | grep -v '\->'); do
    echo "$branch:" >> $output_file
    git show-ref --heads "$branch" >> $output_file
    echo "" >> $output_file
done

echo "Information about all branches has been written to $output_file"