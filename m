Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgUDW-0004fJ-G8
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 08:23:11 +0000
Received: by wizk4 with SMTP id k4so119678094wiz.1
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 01:22:47 -0700 (PDT)
Message-ID: <55278855.6070203@gmail.com>
Date: Fri, 10 Apr 2015 10:22:45 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1428064050-21562-1-git-send-email-dev@lynxeye.de>
In-Reply-To: <1428064050-21562-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] pci: make sure to activate devices on the root bus
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 03.04.2015 14:27, Lucas Stach wrote:
> Commit b8a1bb1dd215 (pci: defer device registration until after bridge setup)
> changed the activation order of devices, so that bridges above the devices could
> be configured properly before activating the devices below. This commit failed
> to acknowledge that there may be devices located directly on the root bus without
> any bridge in between and so those devices would never get enabled.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

The patch properly fixes registration for root bus attached devices, so

Tested-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Thanks.

> ---
>   drivers/pci/pci.c   | 7 +++++++
>   include/linux/pci.h | 1 +
>   2 files changed, 8 insertions(+)
>
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 1f5dc78..2762511 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -348,6 +348,12 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
>   			dev->rom_address = (l == 0xffffffff) ? 0 : l;
>
>   			setup_device(dev, 6);
> +			/*
> +			 * If this device is on the root bus, there is no bridge
> +			 * to configure, so we can activate it right away.
> +			 */
> +			if (!bus->parent_bus)
> +				pci_register_device(dev);
>   			break;
>   		case PCI_HEADER_TYPE_BRIDGE:
>   			setup_device(dev, 2);
> @@ -356,6 +362,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
>   			/* inherit parent properties */
>   			child_bus->host = bus->host;
>   			child_bus->ops = bus->host->pci_ops;
> +			child_bus->parent_bus = bus;
>   			child_bus->resource[PCI_BUS_RESOURCE_MEM] =
>   				bus->resource[PCI_BUS_RESOURCE_MEM];
>   			child_bus->resource[PCI_BUS_RESOURCE_MEM_PREF] =
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index 3d0e73b..e422055 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -123,6 +123,7 @@ enum {
>   struct pci_bus {
>   	struct pci_controller *host;	/* associated host controller */
>   	struct device_d *parent;
> +	struct pci_bus *parent_bus;	/* parent bus */
>   	struct list_head node;		/* node in list of buses */
>   	struct list_head children;	/* list of child buses */
>   	struct list_head devices;	/* list of devices on this bus */
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
