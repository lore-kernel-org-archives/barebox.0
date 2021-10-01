Delivery-date: Fri, 01 Oct 2021 12:15:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFZN-0002oB-Bs
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:15:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFZI-0007Tq-JT
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:15:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c5vd9d8W68A5XUhQdsUnhRMhJ+pAssOf+lgHpDrNghM=; b=MSsr9t53FyX5DBa3skmnUPjpGh
	MbAzEzZBuy7tn3DM52tQKTQWdWqtXhHagieFCRgR4s9khILOjTu3nNCApUc7inUOeWrfRmjamkdLx
	ahwlH5T6Z2i8aDMA6HYcB8lchBl+flGzq7r2Iu4KZl5VLckNN29hOZZHLk3KLvPQy9S0Lnp1UnlJc
	xaX7m1NkKvtcYLWu2L0jQVeHcY2HNLKvI519wsa7GTW4rrkgI3gPL226SW8wzsamt5s7y+GWRSmoW
	Ucv+zz57t3J638OXWWDxswkNRGW1AivfuflaYxv1Flff608yimxFdfDZ557t4RZruzmqZf88jU0UJ
	sNqOjy4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFY1-00HSPl-RM; Fri, 01 Oct 2021 10:13:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFXw-00HSOs-7J
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:13:42 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mWFXv-0007Fb-0A; Fri, 01 Oct 2021 12:13:39 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
 <20210817101104.114945-6-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <741ec3d7-91e0-d5db-e43f-5d11df2d388b@pengutronix.de>
Date: Fri, 1 Oct 2021 12:13:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817101104.114945-6-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_031340_475453_5B6FF941 
X-CRM114-Status: GOOD (  31.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND v4 5/8] spi: add litex spiflash driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.08.21 12:11, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

With the fixup squashed (I hope Sascha can do it on apply):

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/spi/Kconfig          |   3 +
>  drivers/spi/Makefile         |   1 +
>  drivers/spi/litex_spiflash.c | 241 +++++++++++++++++++++++++++++++++++
>  3 files changed, 245 insertions(+)
> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 91083ee709..e92cf675ab 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -74,6 +74,9 @@ config DRIVER_SPI_IMX_2_3
>  	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8M
>  	default y
>  
> +config DRIVER_SPI_LITEX_SPIFLASH
> +	bool "Litex SPIFLASH bitbang master driver"
> +
>  config DRIVER_SPI_MXS
>  	bool "i.MX (23,28) SPI Master driver"
>  	depends on ARCH_IMX28
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index 908d514a01..ac95ffc1db 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -4,6 +4,7 @@ obj-$(CONFIG_DRIVER_SPI_ATH79) += ath79_spi.o
>  obj-$(CONFIG_DRIVER_SPI_GPIO) += gpio_spi.o
>  obj-$(CONFIG_DRIVER_SPI_FSL_QUADSPI) += spi-fsl-qspi.o
>  obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
> +obj-$(CONFIG_DRIVER_SPI_LITEX_SPIFLASH) += litex_spiflash.o
>  obj-$(CONFIG_DRIVER_SPI_MVEBU) += mvebu_spi.o
>  obj-$(CONFIG_DRIVER_SPI_MXS) += mxs_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
> diff --git a/drivers/spi/litex_spiflash.c b/drivers/spi/litex_spiflash.c
> new file mode 100644
> index 0000000000..26ef207699
> --- /dev/null
> +++ b/drivers/spi/litex_spiflash.c
> @@ -0,0 +1,241 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2020 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <spi/spi.h>
> +#include <io.h>
> +
> +struct litex_spiflash_spi {
> +	struct spi_master	master;
> +	void __iomem		*regs;
> +	u32			val;
> +};
> +
> +#define SPIFLASH_BITBANG 0x0
> +#define  SPIFLASH_BB_MOSI BIT(0)
> +#define  SPIFLASH_BB_CLK BIT(1)
> +#define  SPIFLASH_BB_CSN BIT(2)
> +#define  SPIFLASH_BB_DIR BIT(3)
> +
> +#define SPIFLASH_MISO 0x4
> +#define SPIFLASH_BITBANG_EN 0x8
> +
> +static inline u32 litex_spiflash_spi_rr(struct litex_spiflash_spi *sp, int reg)
> +{
> +	return readl(sp->regs + reg);
> +}
> +
> +static inline void litex_spiflash_spi_wr(struct litex_spiflash_spi *sp, u32 val, int reg)
> +{
> +	writel(val, sp->regs + reg);
> +}
> +
> +static inline void setbits(struct litex_spiflash_spi *sp, int bits, int on)
> +{
> +	/*
> +	 * We are the only user of SCSPTR so no locking is required.
> +	 * Reading bit 2 and 0 in SCSPTR gives pin state as input.
> +	 * Writing the same bits sets the output value.
> +	 * This makes regular read-modify-write difficult so we
> +	 * use sp->val to keep track of the latest register value.
> +	 */
> +
> +	if (on)
> +		sp->val |= bits;
> +	else
> +		sp->val &= ~bits;
> +
> +	litex_spiflash_spi_wr(sp, sp->val, SPIFLASH_BITBANG);
> +}
> +
> +static inline struct litex_spiflash_spi *litex_spiflash_spidev_to_sp(struct spi_device *spi)
> +{
> +	return container_of(spi->master, struct litex_spiflash_spi, master);
> +}
> +
> +static inline void setsck(struct spi_device *spi, int on)
> +{
> +	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
> +
> +	setbits(sc, SPIFLASH_BB_CLK, on);
> +}
> +
> +static inline void setmosi(struct spi_device *spi, int on)
> +{
> +	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
> +
> +	sc->val &= ~SPIFLASH_BB_DIR;
> +	setbits(sc, SPIFLASH_BB_MOSI, on);
> +}
> +
> +static inline u32 getmiso(struct spi_device *spi)
> +{
> +	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
> +
> +	setbits(sc, SPIFLASH_BB_DIR, 1);
> +	return !!((litex_spiflash_spi_rr(sc, SPIFLASH_MISO) & 1));
> +}
> +
> +#define spidelay(nsecs) udelay(nsecs/1000)
> +
> +#include "spi-bitbang-txrx.h"
> +
> +static inline void litex_spiflash_spi_chipselect(struct litex_spiflash_spi *sc, int on)
> +{
> +	setbits(sc, SPIFLASH_BB_CSN, on);
> +}
> +
> +static int litex_spiflash_spi_setup(struct spi_device *spi)
> +{
> +	struct spi_master *master = spi->master;
> +	struct device_d spi_dev = spi->dev;
> +
> +	if (spi->bits_per_word != 8) {
> +		dev_err(master->dev, "master doesn't support %d bits per word requested by %s\n",
> +			spi->bits_per_word, spi_dev.name);
> +		return -EINVAL;
> +	}
> +
> +	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != SPI_MODE_0) {
> +		dev_err(master->dev, "master doesn't support SPI_MODE%d requested by %s\n",
> +			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int litex_spiflash_spi_read(struct spi_device *spi, void *buf, size_t nbyte)
> +{
> +	ssize_t cnt = 0;
> +	u8 *rxf_buf = buf;
> +
> +	while (cnt < nbyte) {
> +		*rxf_buf = bitbang_txrx_be_cpha1(spi, 1000, 1, 0, 8);
> +		rxf_buf++;
> +		cnt++;
> +	}
> +
> +	return cnt;
> +}
> +
> +static int litex_spiflash_spi_write(struct spi_device *spi,
> +				const void *buf, size_t nbyte)
> +{
> +	ssize_t cnt = 0;
> +	const u8 *txf_buf = buf;
> +
> +	while (cnt < nbyte) {
> +		bitbang_txrx_be_cpha1(spi, 1000, 1, (u32)*txf_buf, 8);
> +		txf_buf++;
> +		cnt++;
> +	}
> +
> +	return 0;
> +}
> +
> +static int litex_spiflash_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
> +{
> +	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
> +	struct spi_transfer *t;
> +
> +	mesg->actual_length = 0;
> +
> +	/* activate chip select signal */
> +	litex_spiflash_spi_chipselect(sc, 0);
> +
> +	list_for_each_entry(t, &mesg->transfers, transfer_list) {
> +
> +		if (t->tx_buf)
> +			litex_spiflash_spi_write(spi, t->tx_buf, t->len);
> +
> +		if (t->rx_buf)
> +			litex_spiflash_spi_read(spi, t->rx_buf, t->len);
> +
> +		mesg->actual_length += t->len;
> +	}
> +
> +	/* inactivate chip select signal */
> +	litex_spiflash_spi_chipselect(sc, 1);
> +
> +	return 0;
> +}
> +
> +static void litex_spiflash_spi_enable(struct litex_spiflash_spi *sp)
> +{
> +	u32 val;
> +
> +	/* set SPIFLASH_BB_DIR = 0 */
> +	val = SPIFLASH_BB_CSN | SPIFLASH_BB_CLK | SPIFLASH_BB_MOSI;
> +	litex_spiflash_spi_wr(sp, val, SPIFLASH_BITBANG);
> +
> +	/* enable GPIO mode */
> +	litex_spiflash_spi_wr(sp, 1, SPIFLASH_BITBANG_EN);
> +}
> +
> +static void litex_spiflash_spi_disable(struct litex_spiflash_spi *sp)
> +{
> +	/* disable GPIO mode */
> +	litex_spiflash_spi_wr(sp, 0, SPIFLASH_BITBANG_EN);
> +}
> +
> +static int litex_spiflash_spi_probe(struct device_d *dev)
> +{
> +	struct resource *iores;
> +	struct spi_master *master;
> +	struct litex_spiflash_spi *litex_spiflash_spi;
> +
> +	litex_spiflash_spi = xzalloc(sizeof(*litex_spiflash_spi));
> +	dev->priv = litex_spiflash_spi;
> +
> +	master = &litex_spiflash_spi->master;
> +	master->dev = dev;
> +
> +	master->bus_num = dev->id;
> +	master->setup = litex_spiflash_spi_setup;
> +	master->transfer = litex_spiflash_spi_transfer;
> +	master->num_chipselect = 1;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	litex_spiflash_spi->regs = IOMEM(iores->start);
> +
> +	litex_spiflash_spi_enable(litex_spiflash_spi);
> +
> +	/* inactivate chip select signal */
> +	litex_spiflash_spi_chipselect(litex_spiflash_spi, 1);
> +
> +	spi_register_master(master);
> +
> +	return 0;
> +}
> +
> +static void litex_spiflash_spi_remove(struct device_d *dev)
> +{
> +	struct litex_spiflash_spi *sp = dev->priv;
> +
> +	litex_spiflash_spi_disable(sp);
> +}
> +
> +static __maybe_unused struct of_device_id litex_spiflash_spi_dt_ids[] = {
> +	{
> +		.compatible = "litex,spiflash",
> +	},
> +	{
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d litex_spiflash_spi_driver = {
> +	.name  = "litex-spiflash",
> +	.probe = litex_spiflash_spi_probe,
> +	.remove = litex_spiflash_spi_remove,
> +	.of_compatible = DRV_OF_COMPAT(litex_spiflash_spi_dt_ids),
> +};
> +device_platform_driver(litex_spiflash_spi_driver);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

