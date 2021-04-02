FROM ubuntu:20.04
COPY asset_packer /asset_packer
COPY scripts/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
