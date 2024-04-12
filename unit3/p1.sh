#Write a shell script to change the suffix of all your *.txt files to .dat.
for i in *.txt; do
    f=$(echo "$i" | cut -d"." -f1)
    mv "$i" "$f.dat"
done

