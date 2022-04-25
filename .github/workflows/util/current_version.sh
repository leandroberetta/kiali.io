VERSION_TO_RELEASE=$(awk '/## NEXT/,/url/' config.toml | grep -o '\"v.*\"' | tr -d '\"' | xargs)

echo "$VERSION_TO_RELEASE.0"