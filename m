Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5Ast-0007Ua-Tl
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 08:06:36 +0000
Date: Tue, 12 Feb 2013 09:06:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130212080634.GP1906@pengutronix.de>
References: <1360602120-11241-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360602120-11241-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ahci: add generic driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2013 at 06:01:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/ata/Kconfig        |    4 ++++
>  drivers/ata/Makefile       |    2 ++
>  drivers/ata/ahci-generic.c |   47 ++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 53 insertions(+)
>  create mode 100644 drivers/ata/ahci-generic.c
> 
> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index ff6528a..41dc811 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -37,6 +37,10 @@ config DISK_AHCI
>  	select DISK_ATA
>  	select DISK_DRIVE
>  
> +config DISK_AHCI_GENERIC
> +	depends on DISK_AHCI
> +	bool "AHCI generic support"
> +
>  config DISK_AHCI_IMX
>  	depends on DISK_AHCI
>  	bool "i.MX AHCI support"
> diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
> index c444c4d..802bd61 100644
> --- a/drivers/ata/Makefile
> +++ b/drivers/ata/Makefile
> @@ -4,8 +4,10 @@ obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
>  obj-$(CONFIG_DISK_IDE_SFF) += ide-sff.o
>  obj-$(CONFIG_DISK_ATA) += disk_ata_drive.o
>  obj-$(CONFIG_DISK_AHCI) += ahci.o
> +obj-$(CONFIG_DISK_AHCI_GENERIC) += ahci-generic.o
>  obj-$(CONFIG_DISK_AHCI_IMX) += sata-imx.o
>  
> +
>  # interface types
>  
>  obj-$(CONFIG_DISK_INTF_PLATFORM_IDE) += intf_platform_ide.o
> diff --git a/drivers/ata/ahci-generic.c b/drivers/ata/ahci-generic.c
> new file mode 100644
> index 0000000..4077627
> --- /dev/null
> +++ b/drivers/ata/ahci-generic.c
> @@ -0,0 +1,47 @@
> +/*
> + * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <ata_drive.h>
> +#include <io.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include "ahci.h"
> +
> +static int ahci_probe(struct device_d *dev)
> +{
> +	struct ahci_device *ahci;
> +	int ret;
> +
> +	ahci = xzalloc(sizeof(*ahci));
> +
> +	ahci->mmio_base = dev_request_mem_region(dev, 0);
> +
> +	ahci->dev = dev;
> +	dev->priv = ahci;
> +	ret = ahci_add_host(ahci);
> +	if (ret)
> +		goto err_free;
> +
> +	return 0;
> +
> +err_free:
> +	free(ahci);
> +
> +	return ret;
> +}
> +
> +static struct driver_d ahci_driver = {
> +	.name	= "ahci",
> +	.probe	= ahci_probe,
> +};
> +
> +static int ahci_init(void)
> +{
> +	return platform_driver_register(&ahci_driver);
> +}
> +device_initcall(ahci_init);
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
