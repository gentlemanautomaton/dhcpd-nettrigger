FROM gentlemanautomaton/nettrigger as builder

FROM networkboot/dhcpd
COPY --from=builder /nettrigger /
ENTRYPOINT ["/entrypoint.sh"]