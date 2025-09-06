release VERSION:
    #!/usr/bin/env bash
    set -euo pipefail

    # validate version format (v followed by semantic version)
    if [[ ! "{{VERSION}}" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        echo "Error: Version must be in format vX.Y.Z (e.g., v1.0.0)"
        exit 1
    fi

    # create and push the tag
    git tag "{{VERSION}}"
    git push origin main
    git push origin "{{VERSION}}"

    echo "Released {{VERSION}} successfully!"
