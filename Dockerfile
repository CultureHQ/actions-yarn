FROM node:13-slim

LABEL version="1.0.0"
LABEL repository="http://github.com/CultureHQ/actions-yarn"
LABEL homepage="http://github.com/CultureHQ/actions-yarn"
LABEL maintainer="CultureHQ <support@culturehq.com>"

LABEL com.github.actions.name="GitHub Action for yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
