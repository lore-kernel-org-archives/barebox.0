Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2Dmo-00031z-BF
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 06:12:55 +0000
Date: Wed, 2 Jul 2014 08:12:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702061231.GY14257@pengutronix.de>
References: <1404158389-14632-1-git-send-email-antonynpavlov@gmail.com>
 <1404158389-14632-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404158389-14632-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC v4 2/6] PCI: initial commit
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 30, 2014 at 11:59:45PM +0400, Antony Pavlov wrote:
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
>  drivers/pci/pci.c               | 285 +++++++++++++++++++++++++++++++++++++++
>  include/linux/mod_devicetable.h |  20 +++
>  include/linux/pci.h             | 292 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/pci_ids.h         | 136 +++++++++++++++++++
>  include/linux/pci_regs.h        | 110 +++++++++++++++
>  10 files changed, 992 insertions(+)
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
> index 0000000..c7d43c3
> --- /dev/null
> +++ b/drivers/pci/Makefile
> @@ -0,0 +1,8 @@
> +#
> +# Makefile for the PCI bus specific drivers.
> +#
> +obj-y		+= pci.o bus.o
> +
> +ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
> +
> +CPPFLAGS += $(ccflags-y)
> diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
> new file mode 100644
> index 0000000..8215ee5
> --- /dev/null
> +++ b/drivers/pci/bus.c
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
> index 0000000..554cf64
> --- /dev/null
> +++ b/drivers/pci/pci.c
> @@ -0,0 +1,285 @@
> +#include <common.h>
> +#include <linux/pci.h>
> +
> +#ifdef DEBUG
> +#define DBG(x...) printk(x)
> +#else
> +#define DBG(x...)
> +#endif

Can we use the standard debug() macro instead please? Also a

#define pr_fmt(fmt) "PCI: " fmt

helps giving the PCI messages some context.


> +		default:				    /* unknown header */
> +		bad:
> +			printk(KERN_ERR "PCI: %02x:%02x [%04x/%04x/%06x] has unknown header type %02x, ignoring.\n",
> +			       bus->number, dev->devfn, dev->vendor, dev->device, class, hdr_type);

With the pr_fmt this could become:

			pr_err("%02x:%02x [%04x/%04x/%06x] has unknown header type %02x, ignoring.\n",
				bus->number, dev->devfn, dev->vendor, dev->device, class, hdr_type);

> +	struct list_head resources;	/* address space routed to this bus */
> +
> +	struct pci_ops	*ops;		/* configuration access functions */
> +	void		*sysdata;	/* hook for sys-specific extension */
> +	struct proc_dir_entry *procdir;	/* directory entry in /proc/bus/pci */

Doesn't this give a warning? We do no have struct proc_dir_entry

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
