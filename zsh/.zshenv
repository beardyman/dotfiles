
# Projects
export PROJECTS_DIR="$HOME/projects"

# for Python
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include"

# for Postgres
export PGDATABASE=postgres

# for homevrew installed apps
export PATH=/opt/homebrew/bin:$PATH
