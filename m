Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMHRz-0003kZ-1l
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 14:10:20 +0000
Received: by mail-wi0-f174.google.com with SMTP id d1so4265617wiv.13
 for <barebox@lists.infradead.org>; Tue, 26 Aug 2014 07:09:56 -0700 (PDT)
Message-ID: <53FC9530.7020009@gmail.com>
Date: Tue, 26 Aug 2014 16:09:52 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1408825163-6135-2-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408825163-6135-2-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH 1/2] nand: Add Marvell Orion NAND driver
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

On 08/23/2014 10:19 PM, Ezequiel Garcia wrote:
> This commit adds NAND support for the controller present in Kirkwood SoCs.

Ezequiel,

I just did a quick check through all public MVEBU datasheets. It looks
like Kirkwood is really the only SoC with this specific IP while Dove,
Armada 370, and XP have a different one.

> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> ---
>   drivers/mtd/nand/Kconfig      |   7 ++
>   drivers/mtd/nand/Makefile     |   1 +
>   drivers/mtd/nand/nand_orion.c | 162 ++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 170 insertions(+)
>   create mode 100644 drivers/mtd/nand/nand_orion.c
>
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index 04fe3c8..ccf1f9c 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -90,6 +90,13 @@ config NAND_OMAP_GPMC
>   	  Support for NAND flash using GPMC. GPMC is a common memory
>   	  interface found on Texas Instrument's OMAP platforms
>
> +config NAND_ORION
> +	bool
> +	prompt "Orion NAND driver"
> +	depends on ARCH_MVEBU

Therefore, we should limit this to ARCH_KIRKWOOD. Also, we could choose
to call the driver nand_kirkwood.c. OTOH, I am fine with Orion as long
as we find another good name for the other IP. Remember that Dove is
still kind-of-Orion.

FWIW,

Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

I'll give it a try on Guruplug later, too.

> +	help
> +	  Support for the Orion NAND controller, present in Kirkwood SoCs.
> +
>   config NAND_ATMEL
>   	bool
>   	prompt "Atmel (AT91SAM9xxx) NAND driver"
> diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
> index a1414e1..02dacde 100644
> --- a/drivers/mtd/nand/Makefile
> +++ b/drivers/mtd/nand/Makefile
> @@ -10,6 +10,7 @@ obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
>   obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
>   obj-$(CONFIG_NAND_IMX_BBM)		+= nand_imx_bbm.o
>   obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
> +obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
>   obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
>   obj-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
>   pbl-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
> diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
> new file mode 100644
> index 0000000..9bdd3b4
> --- /dev/null
> +++ b/drivers/mtd/nand/nand_orion.c
> @@ -0,0 +1,162 @@
> +/*
> + * (C) Copyright 2014, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> + *
> + * Based on Orion NAND driver from Linux (drivers/mtd/nand/orion_nand.c):
> + * Author: Tzachi Perelstein <tzachi@marvell.com>
> + *
> + * This file is licensed under  the terms of the GNU General Public
> + * License version 2. This program is licensed "as is" without any
> + * warranty of any kind, whether express or implied.
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of_mtd.h>
> +#include <errno.h>
> +#include <linux/mtd/mtd.h>
> +#include <linux/mtd/nand.h>
> +#include <linux/clk.h>
> +
> +struct orion_nand {
> +	struct mtd_info mtd;
> +	struct nand_chip chip;
> +
> +	u8 ale;         /* address line number connected to ALE */
> +	u8 cle;         /* address line number connected to CLE */
> +};
> +
> +static void orion_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
> +{
> +	struct nand_chip *chip = mtd->priv;
> +	struct orion_nand *priv = chip->priv;
> +	u32 offs;
> +
> +	if (cmd == NAND_CMD_NONE)
> +		return;
> +
> +	if (ctrl & NAND_CLE)
> +		offs = (1 << priv->cle);
> +	else if (ctrl & NAND_ALE)
> +		offs = (1 << priv->ale);
> +	else
> +		return;
> +
> +	if (chip->options & NAND_BUSWIDTH_16)
> +		offs <<= 1;
> +
> +	writeb(cmd, chip->IO_ADDR_W + offs);
> +}
> +
> +static void orion_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
> +{
> +	struct nand_chip *chip = mtd->priv;
> +	void __iomem *io_base = chip->IO_ADDR_R;
> +	uint64_t *buf64;
> +	int i = 0;
> +
> +	while (len && (unsigned long)buf & 7) {
> +		*buf++ = readb(io_base);
> +		len--;
> +	}
> +	buf64 = (uint64_t *)buf;
> +	while (i < len/8) {
> +		/*
> +		 * Since GCC has no proper constraint (PR 43518)
> +		 * force x variable to r2/r3 registers as ldrd instruction
> +		 * requires first register to be even.
> +		 */
> +		register uint64_t x asm ("r2");
> +
> +		asm volatile ("ldrd\t%0, [%1]" : "=&r" (x) : "r" (io_base));
> +		buf64[i++] = x;
> +	}
> +	i *= 8;
> +	while (i < len)
> +		buf[i++] = readb(io_base);
> +}
> +
> +static int orion_nand_probe(struct device_d *dev)
> +{
> +	struct device_node *dev_node = dev->device_node;
> +	struct orion_nand *priv;
> +	struct mtd_info *mtd;
> +	struct nand_chip *chip;
> +	struct clk *clk;
> +	void __iomem *io_base;
> +	int width, ret;
> +	u32 val = 0;
> +
> +	priv = xzalloc(sizeof(struct orion_nand));
> +	if (!priv) {
> +		ret = -ENOMEM;
> +		goto no_res;
> +	}
> +	mtd = &priv->mtd;
> +	chip = &priv->chip;
> +
> +	io_base = dev_request_mem_region(dev, 0);
> +
> +	if (!of_property_read_u32(dev_node, "cle", &val))
> +		priv->cle = (u8)val;
> +	else
> +		priv->cle = 0;
> +
> +	if (!of_property_read_u32(dev_node, "ale", &val))
> +		priv->ale = (u8)val;
> +	else
> +		priv->ale = 1;
> +
> +	if (!of_property_read_u32(dev_node, "bank-width", &val))
> +		width = (u8)val * 8;
> +	else
> +		width = 8;
> +
> +	if (!of_property_read_u32(dev_node, "chip-delay", &val))
> +		chip->chip_delay = (u8)val;
> +
> +	mtd->parent = dev;
> +	mtd->priv = chip;
> +	chip->priv = priv;
> +	chip->IO_ADDR_R = chip->IO_ADDR_W = io_base;
> +	chip->cmd_ctrl = orion_nand_cmd_ctrl;
> +	chip->read_buf = orion_nand_read_buf;
> +	chip->ecc.mode = NAND_ECC_SOFT;
> +
> +	WARN(width > 16, "%d bit bus width out of range", width);
> +	if (width == 16)
> +		chip->options |= NAND_BUSWIDTH_16;
> +
> +	/* Not all platforms can gate the clock, so this is optional */
> +	clk = clk_get(dev, 0);
> +	if (!IS_ERR(clk))
> +		clk_enable(clk);
> +
> +	if (nand_scan(mtd, 1)) {
> +		ret = -ENXIO;
> +		goto no_dev;
> +	}
> +
> +	add_mtd_nand_device(mtd, "orion_nand");
> +	return 0;
> +no_dev:
> +	if (!IS_ERR(clk))
> +		clk_disable(clk);
> +no_res:
> +	free(priv);
> +	return ret;
> +}
> +
> +static __maybe_unused struct of_device_id orion_nand_compatible[] = {
> +	{ .compatible = "marvell,orion-nand", },
> +	{},
> +};
> +
> +static struct driver_d orion_nand_driver = {
> +	.name  = "orion_nand",
> +	.probe = orion_nand_probe,
> +	.of_compatible = DRV_OF_COMPAT(orion_nand_compatible),
> +};
> +device_platform_driver(orion_nand_driver);
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
