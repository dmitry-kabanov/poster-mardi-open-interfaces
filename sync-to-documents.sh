if ! cd "$(dirname "$0")" ; then
    echo "Could not change directory to the script directory" >&2
    exit 1
else
    echo "Execute in the following directory: $(pwd)"
fi

if [ -z "${DOCUMENTS_WORK}" ]; then
    echo "Variable DOCUMENTS_WORK is not set. Cannot proceed" >&2
    exit 1
fi

if [ ! -d "${DOCUMENTS_WORK}" ]; then
    echo "Variable DOCUMENTS_WORK does not contain path to directory. Cannot proceed" >&2
    exit 2
fi

dest="${DOCUMENTS_WORK}/Talks/2024-11-18--20-mardi-annual-meeting"

rsync -avz --filter=':- .gitignore' --exclude=".git" ./ "${dest}"
