FROM kkarczmarczyk/node-yarn:4.3.2-slim

LABEL version="1.0.0"
LABEL repository="http://github.com/culturehq/actions-yarn"
LABEL homepage="http://github.com/culturehq/actions-yarn"
LABEL maintainer="CultureHQ <support@culturehq.com>"

LABEL com.github.actions.name="GitHub Action for yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
