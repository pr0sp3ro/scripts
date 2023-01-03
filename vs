#!/usr/bin/env bash

file="$1"
touch "$file"
echo -e "#!/usr/bin/env bash\n" >> "$file"
chmod +x "$file"
nvim "$file"
