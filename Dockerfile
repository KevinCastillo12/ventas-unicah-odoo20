FROM odoo:20.0

USER root

COPY custom_addons/ventas_unicah /mnt/extra-addons/ventas_unicah

RUN chown -R odoo:odoo /mnt/extra-addons/ventas_unicah

USER odoo

EXPOSE 8069
