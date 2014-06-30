Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1YhA-0005nx-Nj
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 10:20:21 +0000
Message-ID: <1404123503.4305.16.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 30 Jun 2014 12:18:23 +0200
In-Reply-To: <1403735538-25437-2-git-send-email-antonynpavlov@gmail.com>
References: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
 <1403735538-25437-2-git-send-email-antonynpavlov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [RFC v3 1/5] PCI: initial commit
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: =?ISO-8859-1?Q?Cl=E9ment?= Leger <cleger@kalray.eu>, barebox@lists.infradead.org

Hi Antony,

nice to see a new revision of this PCI stuff. I've used v2 as a base for
my Tegra PCI hacking during our Techweek.

This revision looks really good and I think it removes most of the
issues I've stumbled across. Some comments below.

Regards,
Lucas

Am Donnerstag, den 26.06.2014, 02:32 +0400 schrieb Antony Pavlov:
> used shorten version of linux-2.6.39 pci_ids.h
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/Makefile                |   1 +
>  drivers/pci/Kconfig             |  12 ++
>  drivers/pci/Makefile            |   8 ++
>  drivers/pci/bus.c               | 110 ++++++++++++++++
>  drivers/pci/pci.c               | 282 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/mod_devicetable.h |  20 +++
>  include/linux/pci.h             | 241 ++++++++++++++++++++++++++++++++++
>  include/linux/pci_ids.h         | 136 +++++++++++++++++++
>  include/linux/pci_regs.h        | 118 +++++++++++++++++
>  9 files changed, 928 insertions(+)
>  create mode 100644 drivers/pci/Kconfig
>  create mode 100644 drivers/pci/Makefile
>  create mode 100644 drivers/pci/bus.c
>  create mode 100644 drivers/pci/pci.c
>  create mode 100644 include/linux/mod_devicetable.h
>  create mode 100644 include/linux/pci.h
>  create mode 100644 include/linux/pci_ids.h
>  create mode 100644 include/linux/pci_regs.h
> 
> diff --git a/drivers/Makefile b/drivers/Makefile
> index ef3604f..1990e86 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -26,3 +26,4 @@ obj-y += pinctrl/
>  obj-y += bus/
>  obj-$(CONFIG_REGULATOR) += regulator/
>  obj-$(CONFIG_RESET_CONTROLLER) += reset/
> +obj-$(CONFIG_PCI) += pci/

Can we please move the Kconfig options for this into drivers/Kconfig? I
know you did it similar to the kernel, but it just does not feel right
to have those into the board/arch Kconfig. PCI is just another bus like
USB and the symbol HW_HAS_PCI should be enough to decide if we show this
options or not.

> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> new file mode 100644
> index 0000000..88b8dfb
> --- /dev/null
> +++ b/drivers/pci/Kconfig
> @@ -0,0 +1,12 @@
> +#
> +# PCI configuration
> +#
> +config PCI_DEBUG
> +	bool "PCI Debugging"
> +	depends on PCI
> +	help
> +	  Say Y here if you want the PCI core to produce a bunch of debug
> +	  messages to the system log.  Select this if you are having a
> +	  problem with PCI support and want to see more of what is going on.
> +
> +	  When in doubt, say N.
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

[...]

> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> new file mode 100644
> index 0000000..9bee73f
> --- /dev/null
> +++ b/drivers/pci/pci.c
> @@ -0,0 +1,282 @@
> +#include <common.h>
> +#include <linux/pci.h>
> +
> +#ifdef DEBUG
> +#define DBG(x...) printk(x)
> +#else
> +#define DBG(x...)
> +#endif
> +
> +static struct pci_controller *hose_head, **hose_tail = &hose_head;
> +
> +struct pci_bus *pci_root;
> +

This should really be a list, like it is in the kernel now. With the
introduction of PCI host controller drivers we have the situation where
a system may have more than one PCI root bus.

> +static struct pci_bus *pci_alloc_bus(void)
> +{
> +	struct pci_bus *b;
> +
> +	b = kzalloc(sizeof(*b), GFP_KERNEL);
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
> +	pci_root = bus;
> +
> +	return;
> +}
> +
[...]

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
