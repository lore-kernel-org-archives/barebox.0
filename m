Delivery-date: Mon, 03 Jul 2023 15:22:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGJVq-00DZcy-EE
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 15:22:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGJVn-00042S-GR
	for lore@pengutronix.de; Mon, 03 Jul 2023 15:22:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vl8ykxRlpX8y+e5YEAf/giRLW8rgtOPqDOk2WJ2lQj8=; b=sF8Fan/YOB5RWN6ruVKLgmjhZc
	sH8UZKQRUCOo0LLmZQ6saaYAn0V+SjXiVBElf3UQlRqD3/VUUG8zrrtpxiZ/1wVXMncb2wyuKwFvB
	DePlHImy9yBZNn/GqY10Pr4bHwziJd4S7wQwN344AOeE+YfYgiS9TvSI2F7q8EqLrCy0tt9K/LFtB
	6a5EajNY16d0IEPb0T/ISBEr8HqWJDCbFOo+FIcjsGEhJvprf1TfsG8WlsS+BFwDHiq72Vu7IVq83
	gru+wxLdUuIq7/9OPdN1wIvcT+3dPJTWBJt+LOn0um3BUzcaQemWyM8K94yCoPHrTslfxchW1Bw8n
	VwsOxmhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGJUV-00Ac9r-13;
	Mon, 03 Jul 2023 13:21:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGJUR-00Ac9O-1k
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 13:21:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGJUP-0003tC-KF; Mon, 03 Jul 2023 15:21:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGJUP-0001m1-7D; Mon, 03 Jul 2023 15:21:13 +0200
Date: Mon, 3 Jul 2023 15:21:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230703132113.GQ18491@pengutronix.de>
References: <20230629201446.16679-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230629201446.16679-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_062115_895917_DF5E4F52 
X-CRM114-Status: GOOD (  27.50  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] nios2: remove arch remains from drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 29, 2023 at 11:13:45PM +0300, Denis Orlov wrote:
> The architecture was removed back in the commit efccc13513, however some
> drivers that were available exclusively for NIOS2 were left over. As it
> has been impossible to compile those since then, it seems reasonable to
> just get rid of them.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/serial/Kconfig              |  10 --
>  drivers/serial/Makefile             |   2 -
>  drivers/serial/serial_altera.c      |  94 -----------
>  drivers/serial/serial_altera_jtag.c |  99 ------------
>  drivers/spi/Kconfig                 |   4 -
>  drivers/spi/Makefile                |   1 -
>  drivers/spi/altera_spi.c            | 236 ----------------------------
>  7 files changed, 446 deletions(-)
>  delete mode 100644 drivers/serial/serial_altera.c
>  delete mode 100644 drivers/serial/serial_altera_jtag.c
>  delete mode 100644 drivers/spi/altera_spi.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 7c9a46845a..77c827e436 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -71,16 +71,6 @@ config DRIVER_SERIAL_CLPS711X
>  	default y
>  	bool "CLPS711X serial driver"
>  
> -config DRIVER_SERIAL_ALTERA
> -	depends on NIOS2
> -	default y
> -	bool "Altera serial driver"
> -
> -config DRIVER_SERIAL_ALTERA_JTAG
> -	depends on NIOS2
> -	default n
> -	bool "Altera JTAG serial driver"
> -
>  config DRIVER_SERIAL_NS16550
>  	default n
>  	bool "NS16550 serial driver"
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 5677dba631..bbc517f521 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -13,8 +13,6 @@ obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
>  obj-$(CONFIG_DRIVER_SERIAL_NS16550_PCI)		+= serial_ns16550_pci.o
>  obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
>  obj-$(CONFIG_DRIVER_SERIAL_STM32)		+= serial_stm32.o
> -obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
> -obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
>  obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
>  obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)	+= serial_omap4_usbboot.o
>  obj-$(CONFIG_DRIVER_SERIAL_AUART)		+= serial_auart.o
> diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
> deleted file mode 100644
> index b13050cfbe..0000000000
> --- a/drivers/serial/serial_altera.c
> +++ /dev/null
> @@ -1,94 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-or-later
> -/*
> - * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
> - */
> -
> -#include <common.h>
> -#include <driver.h>
> -#include <init.h>
> -#include <malloc.h>
> -#include <io.h>
> -#include <asm/nios2-io.h>
> -
> -struct altera_serial_priv {
> -	struct console_device cdev;
> -	void __iomem *regs;
> -};
> -
> -static int altera_serial_setbaudrate(struct console_device *cdev, int baudrate)
> -{
> -	struct altera_serial_priv *priv = container_of(cdev,
> -		struct altera_serial_priv, cdev);
> -
> -	struct nios_uart *uart = priv->regs;
> -	uint16_t div;
> -
> -	div = (CPU_FREQ / baudrate) - 1;
> -	writew(div, &uart->divisor);
> -
> -	return 0;
> -}
> -
> -static void altera_serial_putc(struct console_device *cdev, char c)
> -{
> -	struct altera_serial_priv *priv = container_of(cdev,
> -		struct altera_serial_priv, cdev);
> -
> -	struct nios_uart *uart = priv->regs;
> -
> -	while ((readw(&uart->status) & NIOS_UART_TRDY) == 0);
> -
> -	writew(c, &uart->txdata);
> -}
> -
> -static int altera_serial_tstc(struct console_device *cdev)
> -{
> -	struct altera_serial_priv *priv = container_of(cdev,
> -		struct altera_serial_priv, cdev);
> -
> -	struct nios_uart *uart = priv->regs;
> -
> -	return readw(&uart->status) & NIOS_UART_RRDY;
> -}
> -
> -static int altera_serial_getc(struct console_device *cdev)
> -{
> -	struct altera_serial_priv *priv = container_of(cdev,
> -		struct altera_serial_priv, cdev);
> -
> -	struct nios_uart *uart = priv->regs;
> -
> -	while (altera_serial_tstc(cdev) == 0);
> -
> -	return readw(&uart->rxdata) & 0x000000FF;
> -}
> -
> -static int altera_serial_probe(struct device *dev)
> -{
> -	struct resource *iores;
> -	struct console_device *cdev;
> -	struct altera_serial_priv *priv;
> -
> -	priv = xzalloc(sizeof(*priv));
> -	cdev = &priv->cdev;
> -
> -	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores))
> -		return PTR_ERR(iores);
> -	priv->regs = IOMEM(iores->start);
> -	cdev->dev = dev;
> -	cdev->tstc = altera_serial_tstc;
> -	cdev->putc = altera_serial_putc;
> -	cdev->getc = altera_serial_getc;
> -	cdev->setbrg = altera_serial_setbaudrate;
> -
> -	console_register(cdev);
> -
> -	return 0;
> -}
> -
> -static struct driver altera_serial_driver = {
> -	.name = "altera_serial",
> -	.probe = altera_serial_probe,
> -};
> -console_platform_driver(altera_serial_driver);
> diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
> deleted file mode 100644
> index ad278d1a61..0000000000
> --- a/drivers/serial/serial_altera_jtag.c
> +++ /dev/null
> @@ -1,99 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-or-later
> -/*
> - * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
> - * Scott McNutt <smcnutt@psyent.com>
> - *
> - * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> - */
> -
> -#include <common.h>
> -#include <driver.h>
> -#include <init.h>
> -#include <malloc.h>
> -#include <io.h>
> -#include <asm/nios2-io.h>
> -
> -struct altera_serial_jtag_priv {
> -	struct console_device cdev;
> -	void __iomem *regs;
> -};
> -
> -
> -static int altera_serial_jtag_setbaudrate(struct console_device *cdev, int baudrate)
> -{
> -	return 0;
> -}
> -
> -static void altera_serial_jtag_putc(struct console_device *cdev, char c)
> -{
> -	struct altera_serial_jtag_priv *priv = container_of(cdev,
> -		struct altera_serial_jtag_priv, cdev);
> -
> -	struct nios_jtag *jtag = priv->regs;
> -	uint32_t st;
> -
> -	while (1) {
> -		st = readl(&jtag->control);
> -		if (NIOS_JTAG_WSPACE(st))
> -			break;
> -	}
> -
> -	writel(c, &jtag->data);
> -}
> -
> -static int altera_serial_jtag_tstc(struct console_device *cdev)
> -{
> -	struct altera_serial_jtag_priv *priv = container_of(cdev,
> -		struct altera_serial_jtag_priv, cdev);
> -
> -	struct nios_jtag *jtag = priv->regs;
> -
> -	return readl(&jtag->control) & NIOS_JTAG_RRDY;
> -}
> -
> -static int altera_serial_jtag_getc(struct console_device *cdev)
> -{
> -	struct altera_serial_jtag_priv *priv = container_of(cdev,
> -		struct altera_serial_jtag_priv, cdev);
> -
> -	struct nios_jtag *jtag = priv->regs;
> -	uint32_t val;
> -
> -	while (1) {
> -		val = readl(&jtag->data);
> -		if (val & NIOS_JTAG_RVALID)
> -			break;
> -	}
> -
> -	return val & 0xFF;
> -}
> -
> -static int altera_serial_jtag_probe(struct device *dev) {
> -	struct resource *iores;
> -
> -	struct console_device *cdev;
> -	struct altera_serial_jtag_priv *priv;
> -
> -	priv = xzalloc(sizeof(*priv));
> -	cdev = &priv->cdev;
> -
> -	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores))
> -		return PTR_ERR(iores);
> -	priv->regs = IOMEM(iores->start);
> -	cdev->dev = dev;
> -	cdev->tstc = altera_serial_jtag_tstc;
> -	cdev->putc = altera_serial_jtag_putc;
> -	cdev->getc = altera_serial_jtag_getc;
> -	cdev->setbrg = altera_serial_jtag_setbaudrate;
> -
> -	console_register(cdev);
> -
> -	return 0;
> -}
> -
> -static struct driver altera_serial_jtag_driver = {
> -	.name = "altera_serial_jtag",
> -	.probe = altera_serial_jtag_probe,
> -};
> -console_platform_driver(altera_serial_jtag_driver);
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 8935feb97b..e37c7821fb 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -14,10 +14,6 @@ config SPI_MEM
>  	  This extension is meant to simplify interaction with SPI memories
>  	  by providing a high-level interface to send memory-like commands.
>  
> -config DRIVER_SPI_ALTERA
> -	bool "Altera SPI Master driver"
> -	depends on NIOS2
> -
>  config DRIVER_SPI_ATH79
>  	bool "Atheros AR71XX/AR724X/AR913X/AR933X SPI controller driver"
>  	depends on MACH_MIPS_ATH79
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index 3455eea869..68a8c4e675 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -8,7 +8,6 @@ obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
>  obj-$(CONFIG_DRIVER_SPI_LITEX_SPIFLASH) += litex_spiflash.o
>  obj-$(CONFIG_DRIVER_SPI_MVEBU) += mvebu_spi.o
>  obj-$(CONFIG_DRIVER_SPI_MXS) += mxs_spi.o
> -obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
>  obj-$(CONFIG_SPI_FSL_DSPI) += spi-fsl-dspi.o
>  obj-$(CONFIG_SPI_ATMEL_QUADSPI) += atmel-quadspi.o
> diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
> deleted file mode 100644
> index 50d77723da..0000000000
> --- a/drivers/spi/altera_spi.c
> +++ /dev/null
> @@ -1,236 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-or-later
> -/*
> - * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> - */
> -
> -#include <common.h>
> -#include <init.h>
> -#include <driver.h>
> -#include <spi/spi.h>
> -#include <io.h>
> -#include <asm/spi.h>
> -#include <asm/nios2-io.h>
> -#include <clock.h>
> -
> -static void altera_spi_cs_inactive(struct spi_device *spi);
> -
> -static int altera_spi_setup(struct spi_device *spi)
> -{
> -	struct spi_master *master = spi->master;
> -	struct device spi_dev = spi->dev;
> -	struct altera_spi *altera_spi = container_of(master, struct altera_spi, master);
> -
> -	if (spi->bits_per_word != altera_spi->databits) {
> -		dev_err(master->dev, " master doesn't support %d bits per word requested by %s\n",
> -			spi->bits_per_word, spi_dev.name);
> -		return -EINVAL;
> -	}
> -
> -	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != altera_spi->mode) {
> -		dev_err(master->dev, " master doesn't support SPI_MODE%d requested by %s\n",
> -			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
> -		return -EINVAL;
> -	}
> -
> -	if (spi->max_speed_hz < altera_spi->speed) {
> -		dev_err(master->dev, " frequency is too high for %s\n", spi_dev.name);
> -		return -EINVAL;
> -	}
> -
> -	altera_spi_cs_inactive(spi);
> -
> -	dev_dbg(master->dev, " mode 0x%08x, bits_per_word: %d, speed: %d\n",
> -		spi->mode, spi->bits_per_word, altera_spi->speed);
> -
> -	return 0;
> -}
> -
> -
> -static unsigned int altera_spi_xchg_single(struct altera_spi *altera_spi, unsigned int data)
> -{
> -	struct nios_spi *nios_spi = altera_spi->regs;
> -
> -	while (!(readl(&nios_spi->status) & NIOS_SPI_TRDY));
> -	writel(data, &nios_spi->txdata);
> -
> -	while (!(readl(&nios_spi->status) & NIOS_SPI_RRDY));
> -
> -	return readl(&nios_spi->rxdata);
> -}
> -
> -/*
> - * When using SPI_CS_HIGH devices, only one device is allowed to be
> - * connected to the Altera SPI master. This limitation is due to the
> - * emulation of an active high CS by writing 0 to the slaveselect register
> - * (this produce a '1' to all CS pins).
> - */
> -
> -static void altera_spi_cs_active(struct spi_device *spi)
> -{
> -	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
> -	struct nios_spi *nios_spi = altera_spi->regs;
> -	uint32_t tmp;
> -
> -	if (spi->mode & SPI_CS_HIGH) {
> -		tmp = readw(&nios_spi->control);
> -		writew(tmp & ~NIOS_SPI_SSO, &nios_spi->control);
> -		writel(0, &nios_spi->slaveselect);
> -	} else {
> -		writel(1 << spi->chip_select, &nios_spi->slaveselect);
> -		tmp = readl(&nios_spi->control);
> -		writel(tmp | NIOS_SPI_SSO, &nios_spi->control);
> -	}
> -}
> -
> -static void altera_spi_cs_inactive(struct spi_device *spi)
> -{
> -	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
> -	struct nios_spi *nios_spi = altera_spi->regs;
> -	uint32_t tmp;
> -
> -	if (spi->mode & SPI_CS_HIGH) {
> -		writel(1 << spi->chip_select, &nios_spi->slaveselect);
> -		tmp = readl(&nios_spi->control);
> -		writel(tmp | NIOS_SPI_SSO, &nios_spi->control);
> -	} else {
> -		tmp = readw(&nios_spi->control);
> -		writew(tmp & ~NIOS_SPI_SSO, &nios_spi->control);
> -	}
> -}
> -
> -static unsigned altera_spi_do_xfer(struct spi_device *spi, struct spi_transfer *t)
> -{
> -	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
> -	int word_len;
> -	unsigned retval = 0;
> -	u32 txval;
> -	u32 rxval;
> -
> -	word_len = spi->bits_per_word;
> -
> -	if (word_len <= 8) {
> -		const u8 *txbuf = t->tx_buf;
> -		u8 *rxbuf = t->rx_buf;
> -		int i = 0;
> -
> -		while (i < t->len) {
> -			txval = txbuf ? txbuf[i] : 0;
> -			rxval = altera_spi_xchg_single(altera_spi, txval);
> -			if (rxbuf)
> -				rxbuf[i] = rxval;
> -			i++;
> -			retval++;
> -		}
> -	} else if (word_len <= 16) {
> -		const u16 *txbuf = t->tx_buf;
> -		u16 *rxbuf = t->rx_buf;
> -		int i = 0;
> -
> -		while (i < t->len >> 1) {
> -			txval = txbuf ? txbuf[i] : 0;
> -			rxval = altera_spi_xchg_single(altera_spi, txval);
> -			if (rxbuf)
> -				rxbuf[i] = rxval;
> -			i++;
> -			retval += 2;
> -		}
> -	} else if (word_len <= 32) {
> -		const u32 *txbuf = t->tx_buf;
> -		u32 *rxbuf = t->rx_buf;
> -		int i = 0;
> -
> -		while (i < t->len >> 2) {
> -			txval = txbuf ? txbuf[i] : 0;
> -			rxval = altera_spi_xchg_single(altera_spi, txval);
> -			if (rxbuf)
> -				rxbuf[i] = rxval;
> -			i++;
> -			retval += 4;
> -		}
> -	}
> -
> -	return retval;
> -}
> -
> -static int altera_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
> -{
> -	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
> -	struct nios_spi *nios_spi = altera_spi->regs;
> -	struct spi_transfer *t;
> -	unsigned int cs_change;
> -	const int nsecs = 50;
> -
> -	altera_spi_cs_active(spi);
> -
> -	cs_change = 0;
> -
> -	mesg->actual_length = 0;
> -
> -	list_for_each_entry(t, &mesg->transfers, transfer_list) {
> -
> -		if (cs_change) {
> -			ndelay(nsecs);
> -			altera_spi_cs_inactive(spi);
> -			ndelay(nsecs);
> -			altera_spi_cs_active(spi);
> -		}
> -
> -		cs_change = t->cs_change;
> -
> -		mesg->actual_length += altera_spi_do_xfer(spi, t);
> -
> -		if (cs_change) {
> -			altera_spi_cs_active(spi);
> -		}
> -	}
> -
> -	/* Wait the end of any pending transfer */
> -	while ((readl(&nios_spi->status) & NIOS_SPI_TMT) == 0);
> -
> -	if (!cs_change)
> -		altera_spi_cs_inactive(spi);
> -
> -	return 0;
> -}
> -
> -static int altera_spi_probe(struct device *dev)
> -{
> -	struct resource *iores;
> -	struct spi_master *master;
> -	struct altera_spi *altera_spi;
> -	struct spi_altera_master *pdata = dev->platform_data;
> -	struct nios_spi *nios_spi;
> -
> -	altera_spi = xzalloc(sizeof(*altera_spi));
> -
> -	master = &altera_spi->master;
> -	master->dev = dev;
> -
> -	master->setup = altera_spi_setup;
> -	master->transfer = altera_spi_transfer;
> -	master->num_chipselect = pdata->num_chipselect;
> -	master->bus_num = pdata->bus_num;
> -
> -	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores))
> -		return PTR_ERR(iores);
> -	altera_spi->regs = IOMEM(iores->start);
> -
> -	altera_spi->databits = pdata->databits;
> -	altera_spi->speed = pdata->speed;
> -	altera_spi->mode = pdata->spi_mode;
> -
> -	nios_spi = altera_spi->regs;
> -	writel(0, &nios_spi->slaveselect);
> -	writel(0, &nios_spi->control);
> -
> -	spi_register_master(master);
> -
> -	return 0;
> -}
> -
> -static struct driver altera_spi_driver = {
> -	.name  = "altera_spi",
> -	.probe = altera_spi_probe,
> -};
> -device_platform_driver(altera_spi_driver);
> -- 
> 2.41.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


