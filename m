Delivery-date: Thu, 29 Jun 2023 22:16:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEy40-008ly5-CY
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 22:16:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEy3x-0002lp-Cb
	for lore@pengutronix.de; Thu, 29 Jun 2023 22:16:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eJiL5vdk10ASmRnnfVDsNXTcygfW4APE4hFCOanMHDk=; b=kEg0y30gaTcgnQ
	e2fnCY9uazO7QB2/1HeZHQYBuvMEckRPKhAiYhAV/6ZSXnpFPT3bELOIrFhWc5yZNwaBOEZKWaBQS
	5zcw48y+LgWiZsm/B3frW6OpCP9U3YimZc9ypTKjxG0CYuacF+wJby5p1h6aMrY4/O9tCK38jWr26
	b9VifEnfX1Z1HsOVUiPGElEkBE2DYQ5clCAOsjzT9MXQtEu7e+Mxmb9vJaRjp0TON1iPjJenYAiv6
	u92aP0r60JZLOcKGpxk1UBzCynxm/QMLabQbsbXSvIqC5H8XuKnLutiydJh6Xd1L4Q8CZgEuq8iow
	dUbZx6RzTTt8BxFOE7Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEy2i-0023Aj-32;
	Thu, 29 Jun 2023 20:15:04 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEy2e-00239g-1h
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 20:15:02 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b699284ff4so18121101fa.2
        for <barebox@lists.infradead.org>; Thu, 29 Jun 2023 13:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688069698; x=1690661698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eJiL5vdk10ASmRnnfVDsNXTcygfW4APE4hFCOanMHDk=;
        b=j19BAkYqbYjmu6DSLpD4xWwZMmma6eRtLjcCCKPuUD95whjNeDFVbG1CjX7QqpwHoR
         Vik79SOMQwq3ayOdDbYCYUJ04G9veM081v/gImzNgP7WIL/5puItw0/po548aqV2eQK1
         BcDzbZnOtnXfR9k8no9WDkmOtSeSSa4f6eucYoUH1IyxUxtNAqBXHzcHjiSrgaAZjMOJ
         a7fTnJBlN/+6jEiw225uOn/VBKctdqNA8mZlioWWWoHFE4DaZD78+xDOlzj4JFZwGrwo
         dJhRZmML9uypYfeHP0AB0q22+acr+yQkxgpMmvxFBDofiT7pfoW0sUVE6aNiH2UTkKnm
         m2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688069698; x=1690661698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eJiL5vdk10ASmRnnfVDsNXTcygfW4APE4hFCOanMHDk=;
        b=eEjTU2h1e59V6+ozndWRuWDroexYCUeZRyU5vITIwIhiX5OdhRv/D5IQTJ0+b+2tXr
         cZRQQCZi9B+XggMiEUYX3Nn9vBWqqYh2pFHE6dJxbxywBZmOPnb1YVTAy5Z7T4pcX3pr
         J2IF871t7DOaV+1r9iFImwmIXfDDOs4eyqqRwHYETrYx2ExLWcSQlxTsXWgQWmkATXym
         zx+YogHOQw5c1CcBCnmX/fKPvJRHFloiRBU+VwgnenU8Al4h8cpBuaZAiNvx+Sql8qx/
         FWG+E/E/cnyRGsNRcgxmeaHEcRc+UOZWE1BnLiiOatNrVmCxQt1M+nNWndOvOElHd0q5
         0Uiw==
X-Gm-Message-State: ABy/qLZ00T07T1bwr5/KUVFN1uJ75awQBBiiPJTwjVQp7niYrbTRZi2u
	8irdTlUr8RF1Sxgj5kNZB2En3O/00U8nIA==
X-Google-Smtp-Source: APBJJlEaLq9cfKRw1dA+tVjEcUVR8pz/MbIjZ0yLxutbjlIhywGDe+HetOlQSZVtpi9bt3Yoe1E1fw==
X-Received: by 2002:ac2:5e68:0:b0:4fb:8939:d95c with SMTP id a8-20020ac25e68000000b004fb8939d95cmr670596lfr.30.1688069697668;
        Thu, 29 Jun 2023 13:14:57 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.210])
        by smtp.gmail.com with ESMTPSA id g3-20020ac25383000000b004fb953f74d3sm651514lfh.264.2023.06.29.13.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 13:14:57 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 29 Jun 2023 23:13:45 +0300
Message-ID: <20230629201446.16679-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_131500_590486_7ED36981 
X-CRM114-Status: GOOD (  17.81  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nios2: remove arch remains from drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The architecture was removed back in the commit efccc13513, however some
drivers that were available exclusively for NIOS2 were left over. As it
has been impossible to compile those since then, it seems reasonable to
just get rid of them.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/serial/Kconfig              |  10 --
 drivers/serial/Makefile             |   2 -
 drivers/serial/serial_altera.c      |  94 -----------
 drivers/serial/serial_altera_jtag.c |  99 ------------
 drivers/spi/Kconfig                 |   4 -
 drivers/spi/Makefile                |   1 -
 drivers/spi/altera_spi.c            | 236 ----------------------------
 7 files changed, 446 deletions(-)
 delete mode 100644 drivers/serial/serial_altera.c
 delete mode 100644 drivers/serial/serial_altera_jtag.c
 delete mode 100644 drivers/spi/altera_spi.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 7c9a46845a..77c827e436 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -71,16 +71,6 @@ config DRIVER_SERIAL_CLPS711X
 	default y
 	bool "CLPS711X serial driver"
 
-config DRIVER_SERIAL_ALTERA
-	depends on NIOS2
-	default y
-	bool "Altera serial driver"
-
-config DRIVER_SERIAL_ALTERA_JTAG
-	depends on NIOS2
-	default n
-	bool "Altera JTAG serial driver"
-
 config DRIVER_SERIAL_NS16550
 	default n
 	bool "NS16550 serial driver"
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 5677dba631..bbc517f521 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -13,8 +13,6 @@ obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550_PCI)		+= serial_ns16550_pci.o
 obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
 obj-$(CONFIG_DRIVER_SERIAL_STM32)		+= serial_stm32.o
-obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
-obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
 obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
 obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)	+= serial_omap4_usbboot.o
 obj-$(CONFIG_DRIVER_SERIAL_AUART)		+= serial_auart.o
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
deleted file mode 100644
index b13050cfbe..0000000000
--- a/drivers/serial/serial_altera.c
+++ /dev/null
@@ -1,94 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
- */
-
-#include <common.h>
-#include <driver.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include <asm/nios2-io.h>
-
-struct altera_serial_priv {
-	struct console_device cdev;
-	void __iomem *regs;
-};
-
-static int altera_serial_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	struct altera_serial_priv *priv = container_of(cdev,
-		struct altera_serial_priv, cdev);
-
-	struct nios_uart *uart = priv->regs;
-	uint16_t div;
-
-	div = (CPU_FREQ / baudrate) - 1;
-	writew(div, &uart->divisor);
-
-	return 0;
-}
-
-static void altera_serial_putc(struct console_device *cdev, char c)
-{
-	struct altera_serial_priv *priv = container_of(cdev,
-		struct altera_serial_priv, cdev);
-
-	struct nios_uart *uart = priv->regs;
-
-	while ((readw(&uart->status) & NIOS_UART_TRDY) == 0);
-
-	writew(c, &uart->txdata);
-}
-
-static int altera_serial_tstc(struct console_device *cdev)
-{
-	struct altera_serial_priv *priv = container_of(cdev,
-		struct altera_serial_priv, cdev);
-
-	struct nios_uart *uart = priv->regs;
-
-	return readw(&uart->status) & NIOS_UART_RRDY;
-}
-
-static int altera_serial_getc(struct console_device *cdev)
-{
-	struct altera_serial_priv *priv = container_of(cdev,
-		struct altera_serial_priv, cdev);
-
-	struct nios_uart *uart = priv->regs;
-
-	while (altera_serial_tstc(cdev) == 0);
-
-	return readw(&uart->rxdata) & 0x000000FF;
-}
-
-static int altera_serial_probe(struct device *dev)
-{
-	struct resource *iores;
-	struct console_device *cdev;
-	struct altera_serial_priv *priv;
-
-	priv = xzalloc(sizeof(*priv));
-	cdev = &priv->cdev;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->regs = IOMEM(iores->start);
-	cdev->dev = dev;
-	cdev->tstc = altera_serial_tstc;
-	cdev->putc = altera_serial_putc;
-	cdev->getc = altera_serial_getc;
-	cdev->setbrg = altera_serial_setbaudrate;
-
-	console_register(cdev);
-
-	return 0;
-}
-
-static struct driver altera_serial_driver = {
-	.name = "altera_serial",
-	.probe = altera_serial_probe,
-};
-console_platform_driver(altera_serial_driver);
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
deleted file mode 100644
index ad278d1a61..0000000000
--- a/drivers/serial/serial_altera_jtag.c
+++ /dev/null
@@ -1,99 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
- * Scott McNutt <smcnutt@psyent.com>
- *
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
- */
-
-#include <common.h>
-#include <driver.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include <asm/nios2-io.h>
-
-struct altera_serial_jtag_priv {
-	struct console_device cdev;
-	void __iomem *regs;
-};
-
-
-static int altera_serial_jtag_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	return 0;
-}
-
-static void altera_serial_jtag_putc(struct console_device *cdev, char c)
-{
-	struct altera_serial_jtag_priv *priv = container_of(cdev,
-		struct altera_serial_jtag_priv, cdev);
-
-	struct nios_jtag *jtag = priv->regs;
-	uint32_t st;
-
-	while (1) {
-		st = readl(&jtag->control);
-		if (NIOS_JTAG_WSPACE(st))
-			break;
-	}
-
-	writel(c, &jtag->data);
-}
-
-static int altera_serial_jtag_tstc(struct console_device *cdev)
-{
-	struct altera_serial_jtag_priv *priv = container_of(cdev,
-		struct altera_serial_jtag_priv, cdev);
-
-	struct nios_jtag *jtag = priv->regs;
-
-	return readl(&jtag->control) & NIOS_JTAG_RRDY;
-}
-
-static int altera_serial_jtag_getc(struct console_device *cdev)
-{
-	struct altera_serial_jtag_priv *priv = container_of(cdev,
-		struct altera_serial_jtag_priv, cdev);
-
-	struct nios_jtag *jtag = priv->regs;
-	uint32_t val;
-
-	while (1) {
-		val = readl(&jtag->data);
-		if (val & NIOS_JTAG_RVALID)
-			break;
-	}
-
-	return val & 0xFF;
-}
-
-static int altera_serial_jtag_probe(struct device *dev) {
-	struct resource *iores;
-
-	struct console_device *cdev;
-	struct altera_serial_jtag_priv *priv;
-
-	priv = xzalloc(sizeof(*priv));
-	cdev = &priv->cdev;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->regs = IOMEM(iores->start);
-	cdev->dev = dev;
-	cdev->tstc = altera_serial_jtag_tstc;
-	cdev->putc = altera_serial_jtag_putc;
-	cdev->getc = altera_serial_jtag_getc;
-	cdev->setbrg = altera_serial_jtag_setbaudrate;
-
-	console_register(cdev);
-
-	return 0;
-}
-
-static struct driver altera_serial_jtag_driver = {
-	.name = "altera_serial_jtag",
-	.probe = altera_serial_jtag_probe,
-};
-console_platform_driver(altera_serial_jtag_driver);
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 8935feb97b..e37c7821fb 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -14,10 +14,6 @@ config SPI_MEM
 	  This extension is meant to simplify interaction with SPI memories
 	  by providing a high-level interface to send memory-like commands.
 
-config DRIVER_SPI_ALTERA
-	bool "Altera SPI Master driver"
-	depends on NIOS2
-
 config DRIVER_SPI_ATH79
 	bool "Atheros AR71XX/AR724X/AR913X/AR933X SPI controller driver"
 	depends on MACH_MIPS_ATH79
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 3455eea869..68a8c4e675 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -8,7 +8,6 @@ obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
 obj-$(CONFIG_DRIVER_SPI_LITEX_SPIFLASH) += litex_spiflash.o
 obj-$(CONFIG_DRIVER_SPI_MVEBU) += mvebu_spi.o
 obj-$(CONFIG_DRIVER_SPI_MXS) += mxs_spi.o
-obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
 obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
 obj-$(CONFIG_SPI_FSL_DSPI) += spi-fsl-dspi.o
 obj-$(CONFIG_SPI_ATMEL_QUADSPI) += atmel-quadspi.o
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
deleted file mode 100644
index 50d77723da..0000000000
--- a/drivers/spi/altera_spi.c
+++ /dev/null
@@ -1,236 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
- */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <spi/spi.h>
-#include <io.h>
-#include <asm/spi.h>
-#include <asm/nios2-io.h>
-#include <clock.h>
-
-static void altera_spi_cs_inactive(struct spi_device *spi);
-
-static int altera_spi_setup(struct spi_device *spi)
-{
-	struct spi_master *master = spi->master;
-	struct device spi_dev = spi->dev;
-	struct altera_spi *altera_spi = container_of(master, struct altera_spi, master);
-
-	if (spi->bits_per_word != altera_spi->databits) {
-		dev_err(master->dev, " master doesn't support %d bits per word requested by %s\n",
-			spi->bits_per_word, spi_dev.name);
-		return -EINVAL;
-	}
-
-	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != altera_spi->mode) {
-		dev_err(master->dev, " master doesn't support SPI_MODE%d requested by %s\n",
-			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
-		return -EINVAL;
-	}
-
-	if (spi->max_speed_hz < altera_spi->speed) {
-		dev_err(master->dev, " frequency is too high for %s\n", spi_dev.name);
-		return -EINVAL;
-	}
-
-	altera_spi_cs_inactive(spi);
-
-	dev_dbg(master->dev, " mode 0x%08x, bits_per_word: %d, speed: %d\n",
-		spi->mode, spi->bits_per_word, altera_spi->speed);
-
-	return 0;
-}
-
-
-static unsigned int altera_spi_xchg_single(struct altera_spi *altera_spi, unsigned int data)
-{
-	struct nios_spi *nios_spi = altera_spi->regs;
-
-	while (!(readl(&nios_spi->status) & NIOS_SPI_TRDY));
-	writel(data, &nios_spi->txdata);
-
-	while (!(readl(&nios_spi->status) & NIOS_SPI_RRDY));
-
-	return readl(&nios_spi->rxdata);
-}
-
-/*
- * When using SPI_CS_HIGH devices, only one device is allowed to be
- * connected to the Altera SPI master. This limitation is due to the
- * emulation of an active high CS by writing 0 to the slaveselect register
- * (this produce a '1' to all CS pins).
- */
-
-static void altera_spi_cs_active(struct spi_device *spi)
-{
-	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
-	struct nios_spi *nios_spi = altera_spi->regs;
-	uint32_t tmp;
-
-	if (spi->mode & SPI_CS_HIGH) {
-		tmp = readw(&nios_spi->control);
-		writew(tmp & ~NIOS_SPI_SSO, &nios_spi->control);
-		writel(0, &nios_spi->slaveselect);
-	} else {
-		writel(1 << spi->chip_select, &nios_spi->slaveselect);
-		tmp = readl(&nios_spi->control);
-		writel(tmp | NIOS_SPI_SSO, &nios_spi->control);
-	}
-}
-
-static void altera_spi_cs_inactive(struct spi_device *spi)
-{
-	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
-	struct nios_spi *nios_spi = altera_spi->regs;
-	uint32_t tmp;
-
-	if (spi->mode & SPI_CS_HIGH) {
-		writel(1 << spi->chip_select, &nios_spi->slaveselect);
-		tmp = readl(&nios_spi->control);
-		writel(tmp | NIOS_SPI_SSO, &nios_spi->control);
-	} else {
-		tmp = readw(&nios_spi->control);
-		writew(tmp & ~NIOS_SPI_SSO, &nios_spi->control);
-	}
-}
-
-static unsigned altera_spi_do_xfer(struct spi_device *spi, struct spi_transfer *t)
-{
-	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
-	int word_len;
-	unsigned retval = 0;
-	u32 txval;
-	u32 rxval;
-
-	word_len = spi->bits_per_word;
-
-	if (word_len <= 8) {
-		const u8 *txbuf = t->tx_buf;
-		u8 *rxbuf = t->rx_buf;
-		int i = 0;
-
-		while (i < t->len) {
-			txval = txbuf ? txbuf[i] : 0;
-			rxval = altera_spi_xchg_single(altera_spi, txval);
-			if (rxbuf)
-				rxbuf[i] = rxval;
-			i++;
-			retval++;
-		}
-	} else if (word_len <= 16) {
-		const u16 *txbuf = t->tx_buf;
-		u16 *rxbuf = t->rx_buf;
-		int i = 0;
-
-		while (i < t->len >> 1) {
-			txval = txbuf ? txbuf[i] : 0;
-			rxval = altera_spi_xchg_single(altera_spi, txval);
-			if (rxbuf)
-				rxbuf[i] = rxval;
-			i++;
-			retval += 2;
-		}
-	} else if (word_len <= 32) {
-		const u32 *txbuf = t->tx_buf;
-		u32 *rxbuf = t->rx_buf;
-		int i = 0;
-
-		while (i < t->len >> 2) {
-			txval = txbuf ? txbuf[i] : 0;
-			rxval = altera_spi_xchg_single(altera_spi, txval);
-			if (rxbuf)
-				rxbuf[i] = rxval;
-			i++;
-			retval += 4;
-		}
-	}
-
-	return retval;
-}
-
-static int altera_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
-{
-	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
-	struct nios_spi *nios_spi = altera_spi->regs;
-	struct spi_transfer *t;
-	unsigned int cs_change;
-	const int nsecs = 50;
-
-	altera_spi_cs_active(spi);
-
-	cs_change = 0;
-
-	mesg->actual_length = 0;
-
-	list_for_each_entry(t, &mesg->transfers, transfer_list) {
-
-		if (cs_change) {
-			ndelay(nsecs);
-			altera_spi_cs_inactive(spi);
-			ndelay(nsecs);
-			altera_spi_cs_active(spi);
-		}
-
-		cs_change = t->cs_change;
-
-		mesg->actual_length += altera_spi_do_xfer(spi, t);
-
-		if (cs_change) {
-			altera_spi_cs_active(spi);
-		}
-	}
-
-	/* Wait the end of any pending transfer */
-	while ((readl(&nios_spi->status) & NIOS_SPI_TMT) == 0);
-
-	if (!cs_change)
-		altera_spi_cs_inactive(spi);
-
-	return 0;
-}
-
-static int altera_spi_probe(struct device *dev)
-{
-	struct resource *iores;
-	struct spi_master *master;
-	struct altera_spi *altera_spi;
-	struct spi_altera_master *pdata = dev->platform_data;
-	struct nios_spi *nios_spi;
-
-	altera_spi = xzalloc(sizeof(*altera_spi));
-
-	master = &altera_spi->master;
-	master->dev = dev;
-
-	master->setup = altera_spi_setup;
-	master->transfer = altera_spi_transfer;
-	master->num_chipselect = pdata->num_chipselect;
-	master->bus_num = pdata->bus_num;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	altera_spi->regs = IOMEM(iores->start);
-
-	altera_spi->databits = pdata->databits;
-	altera_spi->speed = pdata->speed;
-	altera_spi->mode = pdata->spi_mode;
-
-	nios_spi = altera_spi->regs;
-	writel(0, &nios_spi->slaveselect);
-	writel(0, &nios_spi->control);
-
-	spi_register_master(master);
-
-	return 0;
-}
-
-static struct driver altera_spi_driver = {
-	.name  = "altera_spi",
-	.probe = altera_spi_probe,
-};
-device_platform_driver(altera_spi_driver);
-- 
2.41.0



