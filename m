Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRBVP-0004f9-Tf
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 07:08:18 +0000
Date: Fri, 8 Jun 2018 09:08:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180608070804.j3tnrur5fsf2kuun@pengutronix.de>
References: <20180607195552.15246-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180607195552.15246-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 1/3] MIPS: ath79: provide driver for Atheros ART
 partition
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Thu, Jun 07, 2018 at 09:55:50PM +0200, Oleksij Rempel wrote:
> From: Oleksij Rempel <linux@rempel-privat.de>
> 
> this partition contains calibration data for WiFi and
> some board specific data, like MAC address.
> 
> For now we care only about MAC.
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---

Have you missed Lucas' answer to this patch?

Sascha

>  arch/mips/mach-ath79/Makefile |   1 +
>  arch/mips/mach-ath79/art.c    | 112 ++++++++++++++++++++++++++++++++++
>  2 files changed, 113 insertions(+)
>  create mode 100644 arch/mips/mach-ath79/art.c
> 
> diff --git a/arch/mips/mach-ath79/Makefile b/arch/mips/mach-ath79/Makefile
> index 3772daeba..b827b363c 100644
> --- a/arch/mips/mach-ath79/Makefile
> +++ b/arch/mips/mach-ath79/Makefile
> @@ -1,2 +1,3 @@
>  obj-y += reset.o
>  obj-y += bbu.o
> +obj-y += art.o
> diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
> new file mode 100644
> index 000000000..984d08736
> --- /dev/null
> +++ b/arch/mips/mach-ath79/art.c
> @@ -0,0 +1,112 @@
> +// SPDX-License-Identifier: GPL-2.
> +/*
> + * Copyright (c) 2018 Oleksij Rempel <linux@rempel-privat.de>
> + */
> +
> +#include <common.h>
> +#include <fcntl.h>
> +#include <init.h>
> +#include <libfile.h>
> +#include <net.h>
> +#include <unistd.h>
> +
> +#define AR93000_EPPROM_OFFSET	0x1000
> +
> +struct ar9300_eeprom {
> +	u8 eeprom_version;
> +	u8 template_version;
> +	u8 mac_addr[6];
> +};
> +
> +static int art_set_mac(struct device_d *dev, struct ar9300_eeprom *eeprom)
> +{
> +	struct device_node *node = dev->device_node;
> +	struct device_node *rnode;
> +
> +	if (!node)
> +		return -ENOENT;
> +
> +	rnode = of_parse_phandle_from(node, NULL,
> +				     "barebox,provide-mac-address", 0);
> +	if (!rnode)
> +		return -ENOENT;
> +
> +	of_eth_register_ethaddr(rnode, &eeprom->mac_addr[0]);
> +
> +	return 0;
> +}
> +
> +static int art_read_mac(struct device_d *dev, const char *file)
> +{
> +	int fd, rbytes;
> +	struct ar9300_eeprom eeprom;
> +
> +	fd = open_and_lseek(file, O_RDONLY, AR93000_EPPROM_OFFSET);
> +	if (fd < 0) {
> +		dev_err(dev, "Failed to open eeprom path %s %d\n",
> +		       file, fd);
> +		return fd;
> +	}
> +
> +	rbytes = read_full(fd, &eeprom, sizeof(eeprom));
> +	close(fd);
> +	if (rbytes < sizeof(eeprom)) {
> +		dev_err(dev, "Failed to read %s\n", file);
> +		return rbytes < 0 ? rbytes : -EIO;
> +	}
> +
> +	dev_dbg(dev, "ART version: %x.%x\n",
> +		 eeprom.eeprom_version, eeprom.template_version);
> +	dev_dbg(dev, "mac: %02x:%02x:%02x:%02x:%02x:%02x\n",
> +	       eeprom.mac_addr[0],
> +	       eeprom.mac_addr[1],
> +	       eeprom.mac_addr[2],
> +	       eeprom.mac_addr[3],
> +	       eeprom.mac_addr[4],
> +	       eeprom.mac_addr[5]);
> +
> +	if (!is_valid_ether_addr(&eeprom.mac_addr[0])) {
> +		dev_err(dev, "bad MAC addr\n");
> +		return -EILSEQ;
> +	}
> +
> +	return art_set_mac(dev, &eeprom);
> +}
> +
> +static int art_probe(struct device_d *dev)
> +{
> +	char *path;
> +	int ret;
> +
> +	dev_dbg(dev, "found ART partition\n");
> +
> +	ret = of_find_path(dev->device_node, "device-path", &path, 0);
> +	if (ret) {
> +		dev_err(dev, "can't find path\n");
> +		return ret;
> +	}
> +
> +	return art_read_mac(dev, path);
> +}
> +
> +static struct of_device_id art_dt_ids[] = {
> +	{
> +		.compatible = "qca,art",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d art_driver = {
> +	.name		= "qca-art",
> +	.probe		= art_probe,
> +	.of_compatible	= art_dt_ids,
> +};
> +
> +static int art_of_driver_init(void)
> +{
> +	platform_driver_register(&art_driver);
> +
> +	return 0;
> +}
> +late_initcall(art_of_driver_init);
> -- 
> 2.17.1
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
