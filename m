Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chAB5-0007g3-Se
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 07:20:34 +0000
Date: Fri, 24 Feb 2017 08:20:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170224072010.m2xwirm3j6ljp37y@pengutronix.de>
References: <20170126100159.6036-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170126100159.6036-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ata: new driver to support the internal sata controller
 on Armada-XP
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 26, 2017 at 11:01:59AM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/ata/Kconfig   |   5 ++
>  drivers/ata/Makefile  |   1 +
>  drivers/ata/sata_mv.c | 126 ++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 132 insertions(+)
>  create mode 100644 drivers/ata/sata_mv.c

I also think that it's better to have a driver that does the
initialization than to do in board specific code where it gets
duplicated from board to board.
Applied this patch.

Sascha

> =

> diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
> index 7850e4a9c967..0234c66c8ec8 100644
> --- a/drivers/ata/Kconfig
> +++ b/drivers/ata/Kconfig
> @@ -42,6 +42,11 @@ config DISK_AHCI_IMX
>  	depends on DISK_AHCI
>  	bool "i.MX AHCI support"
>  =

> +config DISK_SATA_MV
> +	depends on ARCH_MVEBU
> +	select DISK_IDE_SFF
> +	bool "Marvell SATA support"
> +
>  comment "interface types"
>  =

>  config DISK_INTF_PLATFORM_IDE
> diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
> index c444c4d1962e..6b83ae2ef542 100644
> --- a/drivers/ata/Makefile
> +++ b/drivers/ata/Makefile
> @@ -5,6 +5,7 @@ obj-$(CONFIG_DISK_IDE_SFF) +=3D ide-sff.o
>  obj-$(CONFIG_DISK_ATA) +=3D disk_ata_drive.o
>  obj-$(CONFIG_DISK_AHCI) +=3D ahci.o
>  obj-$(CONFIG_DISK_AHCI_IMX) +=3D sata-imx.o
> +obj-$(CONFIG_DISK_SATA_MV) +=3D sata_mv.o
>  =

>  # interface types
>  =

> diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
> new file mode 100644
> index 000000000000..22b29d08a579
> --- /dev/null
> +++ b/drivers/ata/sata_mv.c
> @@ -0,0 +1,126 @@
> +#include <common.h>
> +#include <clock.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <ata_drive.h>
> +
> +#include <asm/io.h>
> +
> +/* This can/should be moved to a more generic place */
> +static void ata_ioports_init(struct ata_ioports *io,
> +			     void *base_data, void *base_reg, void *base_alt,
> +			     unsigned stride)
> +{
> +	/* io->cmd_addr is unused */;
> +	io->data_addr =3D base_data;
> +	io->error_addr =3D base_reg + 1 * stride;
> +	/* io->feature_addr is unused */
> +	io->nsect_addr =3D base_reg + 2 * stride;
> +	io->lbal_addr =3D base_reg + 3 * stride;
> +	io->lbam_addr =3D base_reg + 4 * stride;
> +	io->lbah_addr =3D base_reg + 5 * stride;
> +	io->device_addr =3D base_reg + 6 * stride;
> +	io->status_addr =3D base_reg + 7 * stride;
> +	io->command_addr =3D base_reg + 7 * stride;
> +	/* io->altstatus_addr is unused */
> +
> +	if (base_alt)
> +		io->ctl_addr =3D base_alt;
> +	else
> +		io->ctl_addr =3D io->status_addr;
> +
> +	/* io->alt_dev_addr is unused */
> +}
> +
> +#define REG_WINDOW_CONTROL(n)	((n) * 0x10 + 0x30)
> +#define REG_WINDOW_BASE(n)	((n) * 0x10 + 0x34)
> +
> +#define REG_EDMA_COMMAND(n)	((n) * 0x2000 + 0x2028)
> +#define REG_EDMA_COMMAND__EATARST	0x00000004
> +
> +#define REG_ATA_BASE		0x2100
> +#define REG_SSTATUS(n)		((n) * 0x2000 + 0x2300)
> +#define REG_SCONTROL(n)		((n) * 0x2000 + 0x2308)
> +#define REG_SCONTROL__DET		0x0000000f
> +#define REG_SCONTROL__DET__INIT		0x00000001
> +#define REG_SCONTROL__DET__PHYOK	0x00000002
> +#define REG_SCONTROL__IPM		0x00000f00
> +#define REG_SCONTROL__IPM__PARTIAL	0x00000100
> +#define REG_SCONTROL__IPM__SLUMBER	0x00000200
> +
> +static int mv_sata_probe(struct device_d *dev)
> +{
> +	struct resource *iores;
> +	void __iomem *base;
> +	struct ide_port *ide;
> +	u32 scontrol;
> +	int ret, i;
> +
> +	iores =3D dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		dev_err(dev, "Failed to request mem resources\n");
> +		return PTR_ERR(iores);
> +	}
> +	base =3D IOMEM(iores->start);
> +
> +	/* disable MBus windows */
> +	for (i =3D 0; i < 4; ++i) {
> +		writel(0, base + REG_WINDOW_CONTROL(i));
> +		writel(0, base + REG_WINDOW_BASE(i));
> +	}
> +
> +	/* enable first window */
> +	writel(0x7fff0e01, base + REG_WINDOW_CONTROL(0));
> +	writel(0, base + REG_WINDOW_BASE(0));
> +
> +	writel(REG_EDMA_COMMAND__EATARST, base + REG_EDMA_COMMAND(0));
> +	udelay(25);
> +	writel(0x0, base + REG_EDMA_COMMAND(0));
> +
> +	scontrol =3D readl(base + REG_SCONTROL(0));
> +	scontrol &=3D ~(REG_SCONTROL__DET | REG_SCONTROL__IPM);
> +	/* disable power management */
> +	scontrol |=3D REG_SCONTROL__IPM__PARTIAL | REG_SCONTROL__IPM__SLUMBER;
> +
> +	/* perform interface communication initialization */
> +	writel(scontrol | REG_SCONTROL__DET__INIT, base + REG_SCONTROL(0));
> +	writel(scontrol, base + REG_SCONTROL(0));
> +
> +	ret =3D wait_on_timeout(10 * MSECOND,
> +			      (readl(base + REG_SSTATUS(0)) & REG_SCONTROL__DET) =3D=3D (REG_=
SCONTROL__DET__INIT | REG_SCONTROL__DET__PHYOK));
> +	if (ret) {
> +		dev_err(dev, "Failed to wait for phy (sstatus=3D0x%08x)\n",
> +			readl(base + REG_SSTATUS(0)));
> +		return ret;
> +	}
> +
> +	ide =3D xzalloc(sizeof(*ide));
> +
> +	ide->port.dev =3D dev;
> +
> +	ata_ioports_init(&ide->io, base + REG_ATA_BASE, base + REG_ATA_BASE,
> +			 NULL, 4);
> +
> +	dev->priv =3D ide;
> +
> +	ret =3D ide_port_register(ide);
> +	if (ret)
> +		free(ide);
> +
> +	return ret;
> +}
> +
> +static const struct of_device_id mv_sata_dt_ids[] =3D {
> +	{
> +		.compatible =3D "marvell,armada-370-sata",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d mv_sata_driver =3D {
> +	.name =3D "mv_sata",
> +	.probe =3D mv_sata_probe,
> +	.of_compatible =3D mv_sata_dt_ids,
> +};
> +device_platform_driver(mv_sata_driver);
> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
