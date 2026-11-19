FROM odoo:20.0

USER root

COPY custom_addons/ventas_unicah /mnt/extra-addons/ventas_unicah
COPY start.sh /usr/local/bin/start-odoo.sh

RUN chown -R odoo:odoo /mnt/extra-addons/ventas_unicah \
    && sed -i "s/\r$//" /usr/local/bin/start-odoo.sh \
    && chmod +x /usr/local/bin/start-odoo.sh

USER odoo

EXPOSE 8069

ENTRYPOINT ["/bin/sh", "/usr/local/bin/start-odoo.sh"]
