Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4GCb-0000II-3V
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 21:11:58 +0000
Received: by mail-la0-f49.google.com with SMTP id gf5so3243475lab.8
 for <barebox@lists.infradead.org>; Mon, 07 Jul 2014 14:11:34 -0700 (PDT)
Date: Tue, 8 Jul 2014 01:23:46 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140708012346.2b0e75d53710d0dc68d5afac@gmail.com>
In-Reply-To: <20140707182210.GC19147@ns203013.ovh.net>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
 <1404422826-6589-4-git-send-email-antonynpavlov@gmail.com>
 <20140707182210.GC19147@ns203013.ovh.net>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v5 3/7] PCI: initial commit
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, 7 Jul 2014 20:22:10 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 01:27 Fri 04 Jul     , Antony Pavlov wrote:
> > =

> > used shorten version of linux-2.6.39 pci_ids.h
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/Kconfig                 |   1 +
> >  drivers/Makefile                |   1 +
> >  drivers/pci/Kconfig             |  29 ++++
> >  drivers/pci/Makefile            |   8 ++
> >  drivers/pci/bus.c               | 110 +++++++++++++++
> >  drivers/pci/pci.c               | 292 ++++++++++++++++++++++++++++++++=
+++++++
> >  drivers/pci/pci_iomap.c         |  29 ++++
> >  include/linux/mod_devicetable.h |  20 +++
> >  include/linux/pci.h             | 297 ++++++++++++++++++++++++++++++++=
++++++++
> >  include/linux/pci_ids.h         | 136 ++++++++++++++++++
> >  include/linux/pci_regs.h        | 110 +++++++++++++++
> >  11 files changed, 1033 insertions(+)
> > =

> > diff --git a/drivers/Kconfig b/drivers/Kconfig
> > index 53e1e97..12a9d8c 100644
> > --- a/drivers/Kconfig
> > +++ b/drivers/Kconfig
> > @@ -27,5 +27,6 @@ source "drivers/pinctrl/Kconfig"
> >  source "drivers/bus/Kconfig"
> >  source "drivers/regulator/Kconfig"
> >  source "drivers/reset/Kconfig"
> > +source "drivers/pci/Kconfig"
> >  =

> >  endmenu
> > diff --git a/drivers/Makefile b/drivers/Makefile
> > index ef3604f..1990e86 100644
> > --- a/drivers/Makefile
> > +++ b/drivers/Makefile
> > @@ -26,3 +26,4 @@ obj-y +=3D pinctrl/
> >  obj-y +=3D bus/
> >  obj-$(CONFIG_REGULATOR) +=3D regulator/
> >  obj-$(CONFIG_RESET_CONTROLLER) +=3D reset/
> > +obj-$(CONFIG_PCI) +=3D pci/
> > diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> > new file mode 100644
> > index 0000000..9e46592
> > --- /dev/null
> > +++ b/drivers/pci/Kconfig
> > @@ -0,0 +1,29 @@
> > +config HW_HAS_PCI
> > +	bool
> > +
> > +if HW_HAS_PCI
> > +
> > +menu "PCI bus options"
> > +
> > +config PCI
> > +	bool "Support for PCI controller"
> > +	depends on HW_HAS_PCI
> > +	help
> > +	  Find out whether you have a PCI motherboard. PCI is the name of a
> > +	  bus system, i.e. the way the CPU talks to the other stuff inside
> > +	  your box. If you have PCI, say Y, otherwise N.
> > +
> > +
> > +config PCI_DEBUG
> > +	bool "PCI Debugging"
> > +	depends on PCI
> > +	help
> > +	  Say Y here if you want the PCI core to produce a bunch of debug
> > +	  messages to the system log.  Select this if you are having a
> > +	  problem with PCI support and want to see more of what is going on.
> > +
> > +	  When in doubt, say N.
> > +
> > +endmenu
> > +
> > +endif
> > diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
> > new file mode 100644
> > index 0000000..edac1a5
> > --- /dev/null
> > +++ b/drivers/pci/Makefile
> > @@ -0,0 +1,8 @@
> > +#
> > +# Makefile for the PCI bus specific drivers.
> > +#
> > +obj-y		+=3D pci.o bus.o pci_iomap.o
> > +
> > +ccflags-$(CONFIG_PCI_DEBUG) :=3D -DDEBUG
> > +
> > +CPPFLAGS +=3D $(ccflags-y)
> > diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
> > new file mode 100644
> > index 0000000..8215ee5
> > --- /dev/null
> > +++ b/drivers/pci/bus.c
> missing copyright and licence
> =

> I do not remember who wrote it you, me or both

both

> > @@ -0,0 +1,110 @@
> > +#include <common.h>
> > +#include <init.h>
> > +#include <driver.h>
> > +#include <linux/pci.h>
> > +
> > +/**
> > + * pci_match_one_device - Tell if a PCI device structure has a matching
> > + *                        PCI device id structure
> > + * @id: single PCI device id structure to match
> > + * @dev: the PCI device structure to match against
> > + *
> > + * Returns the matching pci_device_id structure or %NULL if there is n=
o match.
> > + */
> > +static inline const struct pci_device_id *
> > +pci_match_one_device(const struct pci_device_id *id, const struct pci_=
dev *dev)
> > +{
> > +	if ((id->vendor =3D=3D PCI_ANY_ID || id->vendor =3D=3D dev->vendor) &&
> > +	    (id->device =3D=3D PCI_ANY_ID || id->device =3D=3D dev->device) &&
> > +	    (id->subvendor =3D=3D PCI_ANY_ID || id->subvendor =3D=3D dev->sub=
system_vendor) &&
> > +	    (id->subdevice =3D=3D PCI_ANY_ID || id->subdevice =3D=3D dev->sub=
system_device) &&
> > +	    !((id->class ^ dev->class) & id->class_mask))
> > +		return id;
> > +	return NULL;
> > +}
> > +
> > +static int pci_match(struct device_d *dev, struct driver_d *drv)
> > +{
> > +	struct pci_dev *pdev =3D to_pci_dev(dev);
> > +	struct pci_driver *pdrv =3D to_pci_driver(drv);
> > +	struct pci_device_id *id;
> > +
> > +	for (id =3D (struct pci_device_id *)pdrv->id_table; id->vendor; id++)
> > +		if (pci_match_one_device(id, pdev)) {
> > +			dev->priv =3D id;
> > +			return 0;
> > +		}
> > +
> > +	return -1;
> > +}
> > +
> > +static int pci_probe(struct device_d *dev)
> > +{
> > +	struct pci_dev *pdev =3D to_pci_dev(dev);
> > +	struct pci_driver *pdrv =3D to_pci_driver(dev->driver);
> > +
> > +	return pdrv->probe(pdev, dev->priv);
> > +}
> > +
> > +static void pci_remove(struct device_d *dev)
> > +{
> > +	struct pci_dev *pdev =3D to_pci_dev(dev);
> > +	struct pci_driver *pdrv =3D to_pci_driver(dev->driver);
> > +
> > +	pdrv->remove(pdev);
> > +}
> > +
> > +struct bus_type pci_bus =3D {
> > +	.name =3D "pci",
> > +	.match =3D pci_match,
> > +	.probe =3D pci_probe,
> > +	.remove =3D pci_remove,
> > +};
> > +
> > +static int pci_bus_init(void)
> > +{
> > +	return bus_register(&pci_bus);
> > +}
> > +pure_initcall(pci_bus_init);
> > +
> > +int pci_register_driver(struct pci_driver *pdrv)
> > +{
> > +	struct driver_d *drv =3D &pdrv->driver;
> > +
> > +	if (!pdrv->id_table)
> > +		return -EIO;
> > +
> > +	drv->name =3D pdrv->name;
> > +	drv->bus =3D &pci_bus;
> > +
> > +	return register_driver(drv);
> > +}
> > +
> > +int pci_register_device(struct pci_dev *pdev)
> > +{
> > +	char str[6];
> > +	struct device_d *dev =3D &pdev->dev;
> > +	int ret;
> > +
> > +	strcpy(dev->name, "pci");
> > +	dev->bus =3D &pci_bus;
> > +	dev->id =3D DEVICE_ID_DYNAMIC;
> > +
> > +	ret =3D register_device(dev);
> > +
> > +	if (ret)
> > +		return ret;
> > +
> > +	sprintf(str, "%02x", pdev->devfn);
> > +	dev_add_param_fixed(dev, "devfn", str);
> > +	sprintf(str, "%04x", (pdev->class >> 8) & 0xffff);
> > +	dev_add_param_fixed(dev, "class", str);
> > +	sprintf(str, "%04x", pdev->vendor);
> > +	dev_add_param_fixed(dev, "vendor", str);
> > +	sprintf(str, "%04x", pdev->device);
> > +	dev_add_param_fixed(dev, "device", str);
> > +	sprintf(str, "%04x", pdev->revision);
> > +	dev_add_param_fixed(dev, "revision", str);
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> > new file mode 100644
> > index 0000000..ad9350f
> > --- /dev/null
> > +++ b/drivers/pci/pci.c
> same here
> > @@ -0,0 +1,292 @@
> > +#include <common.h>
> > +#include <linux/pci.h>
> > +
> > +#ifdef DEBUG
> > +#define DBG(x...) printk(x)
> > +#else
> > +#define DBG(x...)
> > +#endif
> we need to use pr_debug or better dev_dbg

but currently there is no device instance to pass to dev_* family calls.

so pr_* is better.

> > +
> > +static struct pci_controller *hose_head, **hose_tail =3D &hose_head;
> > +
> > +LIST_HEAD(pci_root_buses);
> > +EXPORT_SYMBOL(pci_root_buses);
> > +
> > +static struct pci_bus *pci_alloc_bus(void)
> > +{
> > +	struct pci_bus *b;
> > +
> > +	b =3D kzalloc(sizeof(*b), GFP_KERNEL);
> =

> 	if (!b)
> 		return b;

kzalloc() eventually calls xmalloc().
xmalloc() calls panic() if malloc fails, so there is no need to check b at =
all.


> so no {}
> =

> > +	if (b) {
> > +		INIT_LIST_HEAD(&b->node);
> > +		INIT_LIST_HEAD(&b->children);
> > +		INIT_LIST_HEAD(&b->devices);
> > +		INIT_LIST_HEAD(&b->slots);
> > +		INIT_LIST_HEAD(&b->resources);
> > +	}
> > +	return b;
> > +}
> > +
> > +void register_pci_controller(struct pci_controller *hose)
> > +{
> > +	struct pci_bus *bus;
> > +
> > +	*hose_tail =3D hose;
> > +	hose_tail =3D &hose->next;
> > +
> > +	bus =3D pci_alloc_bus();
> > +	hose->bus =3D bus;
> > +	bus->ops =3D hose->pci_ops;
> > +	bus->resource[0] =3D hose->mem_resource;
> > +	bus->resource[1] =3D hose->io_resource;
> > +
> > +	pci_scan_bus(bus);
> > +
> > +	list_add_tail(&bus->node, &pci_root_buses);
> > +
> > +	return;
> > +}
> > +
> > +/*
> > + *  Wrappers for all PCI configuration access functions.  They just ch=
eck
> > + *  alignment, do locking and call the low-level functions pointed to
> > + *  by pci_dev->ops.
> > + */
> > +
> > +#define PCI_byte_BAD 0
> > +#define PCI_word_BAD (pos & 1)
> > +#define PCI_dword_BAD (pos & 3)
> > +
> > +#define PCI_OP_READ(size,type,len) \
> > +int pci_bus_read_config_##size \
> > +	(struct pci_bus *bus, unsigned int devfn, int pos, type *value)	\
> > +{									\
> > +	int res;							\
> > +	u32 data =3D 0;							\
> > +	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
> > +	res =3D bus->ops->read(bus, devfn, pos, len, &data);		\
> > +	*value =3D (type)data;						\
> > +	return res;							\
> > +}
> > +
> > +#define PCI_OP_WRITE(size,type,len) \
> > +int pci_bus_write_config_##size \
> > +	(struct pci_bus *bus, unsigned int devfn, int pos, type value)	\
> > +{									\
> > +	int res;							\
> > +	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
> > +	res =3D bus->ops->write(bus, devfn, pos, len, value);		\
> > +	return res;							\
> > +}
> > +
> > +PCI_OP_READ(byte, u8, 1)
> > +PCI_OP_READ(word, u16, 2)
> > +PCI_OP_READ(dword, u32, 4)
> > +PCI_OP_WRITE(byte, u8, 1)
> > +PCI_OP_WRITE(word, u16, 2)
> > +PCI_OP_WRITE(dword, u32, 4)
> > +
> > +EXPORT_SYMBOL(pci_bus_read_config_byte);
> > +EXPORT_SYMBOL(pci_bus_read_config_word);
> > +EXPORT_SYMBOL(pci_bus_read_config_dword);
> > +EXPORT_SYMBOL(pci_bus_write_config_byte);
> > +EXPORT_SYMBOL(pci_bus_write_config_word);
> > +EXPORT_SYMBOL(pci_bus_write_config_dword);
> > +
> > +static struct pci_dev *alloc_pci_dev(void)
> > +{
> > +	struct pci_dev *dev;
> > +
> > +	dev =3D kzalloc(sizeof(struct pci_dev), GFP_KERNEL);
> > +	if (!dev)
> > +		return NULL;
> > +
> > +	INIT_LIST_HEAD(&dev->bus_list);
> > +
> > +	return dev;
> > +}
> > +
>  =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
