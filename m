Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4DUx-0001hW-IQ
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 18:18:46 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 51E8BFF9558
 for <barebox@lists.infradead.org>; Mon,  7 Jul 2014 20:18:19 +0200 (CEST)
Date: Mon, 7 Jul 2014 20:22:10 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140707182210.GC19147@ns203013.ovh.net>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
 <1404422826-6589-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404422826-6589-4-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v5 3/7] PCI: initial commit
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 01:27 Fri 04 Jul     , Antony Pavlov wrote:
> 
> used shorten version of linux-2.6.39 pci_ids.h
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/Kconfig                 |   1 +
>  drivers/Makefile                |   1 +
>  drivers/pci/Kconfig             |  29 ++++
>  drivers/pci/Makefile            |   8 ++
>  drivers/pci/bus.c               | 110 +++++++++++++++
>  drivers/pci/pci.c               | 292 +++++++++++++++++++++++++++++++++++++++
>  drivers/pci/pci_iomap.c         |  29 ++++
>  include/linux/mod_devicetable.h |  20 +++
>  include/linux/pci.h             | 297 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/pci_ids.h         | 136 ++++++++++++++++++
>  include/linux/pci_regs.h        | 110 +++++++++++++++
>  11 files changed, 1033 insertions(+)
> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index 53e1e97..12a9d8c 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -27,5 +27,6 @@ source "drivers/pinctrl/Kconfig"
>  source "drivers/bus/Kconfig"
>  source "drivers/regulator/Kconfig"
>  source "drivers/reset/Kconfig"
> +source "drivers/pci/Kconfig"
>  
>  endmenu
> diff --git a/drivers/Makefile b/drivers/Makefile
> index ef3604f..1990e86 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -26,3 +26,4 @@ obj-y += pinctrl/
>  obj-y += bus/
>  obj-$(CONFIG_REGULATOR) += regulator/
>  obj-$(CONFIG_RESET_CONTROLLER) += reset/
> +obj-$(CONFIG_PCI) += pci/
> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> new file mode 100644
> index 0000000..9e46592
> --- /dev/null
> +++ b/drivers/pci/Kconfig
> @@ -0,0 +1,29 @@
> +config HW_HAS_PCI
> +	bool
> +
> +if HW_HAS_PCI
> +
> +menu "PCI bus options"
> +
> +config PCI
> +	bool "Support for PCI controller"
> +	depends on HW_HAS_PCI
> +	help
> +	  Find out whether you have a PCI motherboard. PCI is the name of a
> +	  bus system, i.e. the way the CPU talks to the other stuff inside
> +	  your box. If you have PCI, say Y, otherwise N.
> +
> +
> +config PCI_DEBUG
> +	bool "PCI Debugging"
> +	depends on PCI
> +	help
> +	  Say Y here if you want the PCI core to produce a bunch of debug
> +	  messages to the system log.  Select this if you are having a
> +	  problem with PCI support and want to see more of what is going on.
> +
> +	  When in doubt, say N.
> +
> +endmenu
> +
> +endif
> diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
> new file mode 100644
> index 0000000..edac1a5
> --- /dev/null
> +++ b/drivers/pci/Makefile
> @@ -0,0 +1,8 @@
> +#
> +# Makefile for the PCI bus specific drivers.
> +#
> +obj-y		+= pci.o bus.o pci_iomap.o
> +
> +ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
> +
> +CPPFLAGS += $(ccflags-y)
> diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
> new file mode 100644
> index 0000000..8215ee5
> --- /dev/null
> +++ b/drivers/pci/bus.c
missing copyright and licence

I do not remember who wrote it you, me or both
> @@ -0,0 +1,110 @@
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <linux/pci.h>
> +
> +/**
> + * pci_match_one_device - Tell if a PCI device structure has a matching
> + *                        PCI device id structure
> + * @id: single PCI device id structure to match
> + * @dev: the PCI device structure to match against
> + *
> + * Returns the matching pci_device_id structure or %NULL if there is no match.
> + */
> +static inline const struct pci_device_id *
> +pci_match_one_device(const struct pci_device_id *id, const struct pci_dev *dev)
> +{
> +	if ((id->vendor == PCI_ANY_ID || id->vendor == dev->vendor) &&
> +	    (id->device == PCI_ANY_ID || id->device == dev->device) &&
> +	    (id->subvendor == PCI_ANY_ID || id->subvendor == dev->subsystem_vendor) &&
> +	    (id->subdevice == PCI_ANY_ID || id->subdevice == dev->subsystem_device) &&
> +	    !((id->class ^ dev->class) & id->class_mask))
> +		return id;
> +	return NULL;
> +}
> +
> +static int pci_match(struct device_d *dev, struct driver_d *drv)
> +{
> +	struct pci_dev *pdev = to_pci_dev(dev);
> +	struct pci_driver *pdrv = to_pci_driver(drv);
> +	struct pci_device_id *id;
> +
> +	for (id = (struct pci_device_id *)pdrv->id_table; id->vendor; id++)
> +		if (pci_match_one_device(id, pdev)) {
> +			dev->priv = id;
> +			return 0;
> +		}
> +
> +	return -1;
> +}
> +
> +static int pci_probe(struct device_d *dev)
> +{
> +	struct pci_dev *pdev = to_pci_dev(dev);
> +	struct pci_driver *pdrv = to_pci_driver(dev->driver);
> +
> +	return pdrv->probe(pdev, dev->priv);
> +}
> +
> +static void pci_remove(struct device_d *dev)
> +{
> +	struct pci_dev *pdev = to_pci_dev(dev);
> +	struct pci_driver *pdrv = to_pci_driver(dev->driver);
> +
> +	pdrv->remove(pdev);
> +}
> +
> +struct bus_type pci_bus = {
> +	.name = "pci",
> +	.match = pci_match,
> +	.probe = pci_probe,
> +	.remove = pci_remove,
> +};
> +
> +static int pci_bus_init(void)
> +{
> +	return bus_register(&pci_bus);
> +}
> +pure_initcall(pci_bus_init);
> +
> +int pci_register_driver(struct pci_driver *pdrv)
> +{
> +	struct driver_d *drv = &pdrv->driver;
> +
> +	if (!pdrv->id_table)
> +		return -EIO;
> +
> +	drv->name = pdrv->name;
> +	drv->bus = &pci_bus;
> +
> +	return register_driver(drv);
> +}
> +
> +int pci_register_device(struct pci_dev *pdev)
> +{
> +	char str[6];
> +	struct device_d *dev = &pdev->dev;
> +	int ret;
> +
> +	strcpy(dev->name, "pci");
> +	dev->bus = &pci_bus;
> +	dev->id = DEVICE_ID_DYNAMIC;
> +
> +	ret = register_device(dev);
> +
> +	if (ret)
> +		return ret;
> +
> +	sprintf(str, "%02x", pdev->devfn);
> +	dev_add_param_fixed(dev, "devfn", str);
> +	sprintf(str, "%04x", (pdev->class >> 8) & 0xffff);
> +	dev_add_param_fixed(dev, "class", str);
> +	sprintf(str, "%04x", pdev->vendor);
> +	dev_add_param_fixed(dev, "vendor", str);
> +	sprintf(str, "%04x", pdev->device);
> +	dev_add_param_fixed(dev, "device", str);
> +	sprintf(str, "%04x", pdev->revision);
> +	dev_add_param_fixed(dev, "revision", str);
> +
> +	return 0;
> +}
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> new file mode 100644
> index 0000000..ad9350f
> --- /dev/null
> +++ b/drivers/pci/pci.c
same here
> @@ -0,0 +1,292 @@
> +#include <common.h>
> +#include <linux/pci.h>
> +
> +#ifdef DEBUG
> +#define DBG(x...) printk(x)
> +#else
> +#define DBG(x...)
> +#endif
we need to use pr_debug or better dev_dbg
> +
> +static struct pci_controller *hose_head, **hose_tail = &hose_head;
> +
> +LIST_HEAD(pci_root_buses);
> +EXPORT_SYMBOL(pci_root_buses);
> +
> +static struct pci_bus *pci_alloc_bus(void)
> +{
> +	struct pci_bus *b;
> +
> +	b = kzalloc(sizeof(*b), GFP_KERNEL);

	if (!b)
		return b;

so no {}

> +	if (b) {
> +		INIT_LIST_HEAD(&b->node);
> +		INIT_LIST_HEAD(&b->children);
> +		INIT_LIST_HEAD(&b->devices);
> +		INIT_LIST_HEAD(&b->slots);
> +		INIT_LIST_HEAD(&b->resources);
> +	}
> +	return b;
> +}
> +
> +void register_pci_controller(struct pci_controller *hose)
> +{
> +	struct pci_bus *bus;
> +
> +	*hose_tail = hose;
> +	hose_tail = &hose->next;
> +
> +	bus = pci_alloc_bus();
> +	hose->bus = bus;
> +	bus->ops = hose->pci_ops;
> +	bus->resource[0] = hose->mem_resource;
> +	bus->resource[1] = hose->io_resource;
> +
> +	pci_scan_bus(bus);
> +
> +	list_add_tail(&bus->node, &pci_root_buses);
> +
> +	return;
> +}
> +
> +/*
> + *  Wrappers for all PCI configuration access functions.  They just check
> + *  alignment, do locking and call the low-level functions pointed to
> + *  by pci_dev->ops.
> + */
> +
> +#define PCI_byte_BAD 0
> +#define PCI_word_BAD (pos & 1)
> +#define PCI_dword_BAD (pos & 3)
> +
> +#define PCI_OP_READ(size,type,len) \
> +int pci_bus_read_config_##size \
> +	(struct pci_bus *bus, unsigned int devfn, int pos, type *value)	\
> +{									\
> +	int res;							\
> +	u32 data = 0;							\
> +	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
> +	res = bus->ops->read(bus, devfn, pos, len, &data);		\
> +	*value = (type)data;						\
> +	return res;							\
> +}
> +
> +#define PCI_OP_WRITE(size,type,len) \
> +int pci_bus_write_config_##size \
> +	(struct pci_bus *bus, unsigned int devfn, int pos, type value)	\
> +{									\
> +	int res;							\
> +	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
> +	res = bus->ops->write(bus, devfn, pos, len, value);		\
> +	return res;							\
> +}
> +
> +PCI_OP_READ(byte, u8, 1)
> +PCI_OP_READ(word, u16, 2)
> +PCI_OP_READ(dword, u32, 4)
> +PCI_OP_WRITE(byte, u8, 1)
> +PCI_OP_WRITE(word, u16, 2)
> +PCI_OP_WRITE(dword, u32, 4)
> +
> +EXPORT_SYMBOL(pci_bus_read_config_byte);
> +EXPORT_SYMBOL(pci_bus_read_config_word);
> +EXPORT_SYMBOL(pci_bus_read_config_dword);
> +EXPORT_SYMBOL(pci_bus_write_config_byte);
> +EXPORT_SYMBOL(pci_bus_write_config_word);
> +EXPORT_SYMBOL(pci_bus_write_config_dword);
> +
> +static struct pci_dev *alloc_pci_dev(void)
> +{
> +	struct pci_dev *dev;
> +
> +	dev = kzalloc(sizeof(struct pci_dev), GFP_KERNEL);
> +	if (!dev)
> +		return NULL;
> +
> +	INIT_LIST_HEAD(&dev->bus_list);
> +
> +	return dev;
> +}
> +
 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
