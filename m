Delivery-date: Tue, 28 Feb 2023 14:59:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX0Ve-004jLp-HQ
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 14:59:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX0Vd-0000NT-PO
	for lore@pengutronix.de; Tue, 28 Feb 2023 14:59:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R3I1fphFfZpdYEEi0nWAu/pP8R06YL5Q59Dx443z+qg=; b=j8bKktuomK3FgvpLwqdScSaEgh
	k/ukOVdtI55ScVVlbVsmfVgxRzW6eB4BM/wNangK/e5CJdZcw02girDo6h1KfMGZTyg1KjB8eCfPN
	nitdy8yyWhLIX2PNXiXwz5qxlo0TiP+4fX0cimeAotmYF70lH7AspJfjIwOZ2X6gxN9q2ISbR0IwR
	eiNp3z81lZaZhAzZ7jIbKvKnoEKXd2QeQ41r8ogp7+2+bewv2FM/zC4/TjMb8CHeVa3Tm7jPNBIde
	u5HKfFHWp+45rald82egugimYCD0YDk36DEuPxSkCHO9tHB+jEJHzJcd0l9LODuL1t5sL2H29LzTG
	iiMSmuhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX0U7-00DMcZ-JU; Tue, 28 Feb 2023 13:57:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX0U1-00DMa5-Pq
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 13:57:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Tz-0000AG-DL; Tue, 28 Feb 2023 14:57:31 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Ty-000sdr-Pr; Tue, 28 Feb 2023 14:57:30 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Tx-006irg-Ec; Tue, 28 Feb 2023 14:57:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 14:57:26 +0100
Message-Id: <20230228135727.1602351-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228135727.1602351-1-s.hauer@pengutronix.de>
References: <20230228135727.1602351-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_055734_022912_FB55D5BD 
X-CRM114-Status: GOOD (  21.00  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] serial: remove s3c driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Samsung architecture has been removed, remove the serial driver
only used on this architecture as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/Kconfig      |  18 ----
 drivers/serial/Makefile     |   1 -
 drivers/serial/serial_s3c.c | 198 ------------------------------------
 3 files changed, 217 deletions(-)
 delete mode 100644 drivers/serial/serial_s3c.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 6fda32d44c..7c9a46845a 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -107,24 +107,6 @@ config DRIVER_SERIAL_PL010
 	help
 	  Enable this to get support for AMBA PL010 based serial devices
 
-config DRIVER_SERIAL_S3C_IMPROVED
-	bool
-
-config DRIVER_SERIAL_S3C
-	bool "Samsung S3C serial driver"
-	depends on ARCH_SAMSUNG
-	select DRIVER_SERIAL_S3C_IMPROVED if (CPU_S5PC110 || CPU_S5PV210 || CPU_S3C6410)
-	default y
-	help
-	  Say Y here if you want to use the CONS on a Samsung S3C CPU
-
-config DRIVER_SERIAL_S3C_AUTOSYNC
-	bool "Enable auto flow"
-	depends on DRIVER_SERIAL_S3C
-	help
-	  Say Y here if you want to use the auto flow feature of this
-	  UART. RTS and CTS will be handled by the hardware when enabled.
-
 config DRIVER_SERIAL_PXA
 	bool "PXA serial driver"
 	depends on ARCH_PXA
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 4b2bfb0537..5677dba631 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -12,7 +12,6 @@ obj-$(CONFIG_DRIVER_SERIAL_CLPS711X)		+= serial_clps711x.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550_PCI)		+= serial_ns16550_pci.o
 obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
-obj-$(CONFIG_DRIVER_SERIAL_S3C)			+= serial_s3c.o
 obj-$(CONFIG_DRIVER_SERIAL_STM32)		+= serial_stm32.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
deleted file mode 100644
index 5f6f2082eb..0000000000
--- a/drivers/serial/serial_s3c.c
+++ /dev/null
@@ -1,198 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * (c) 2009...2011 Juergen Beisert <j.beisert@pengutronix.de>
- *
- * Based on code from:
- * (c) 2004 Sascha Hauer <sascha@saschahauer.de>
- */
-
-#include <common.h>
-#include <driver.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include <mach/s3c-generic.h>
-#include <mach/s3c-iomap.h>
-
-/* Note: Offsets are for little endian access */
-#define ULCON 0x00		/* line control */
-#define UCON 0x04		/* UART control */
-# define UCON_SET_CLK_SRC(x) (((x) & 0x03) << 10)
-# define UCON_GET_CLK_SRC(x) (((x) >> 10) & 0x03)
-#define UFCON 0x08		/* FIFO control */
-#define UMCON 0x0c		/* modem control */
-#define UTRSTAT 0x10		/* Rx/Tx status */
-#define UERSTAT 0x14		/* error status */
-#define UFSTAT 0x18		/* FIFO status */
-#define UMSTAT 0x1c		/* modem status */
-#define UTXH 0x20		/* transmitt */
-#define URXH 0x24		/* receive */
-#define UBRDIV 0x28		/* baudrate generator */
-#define UBRDIVSLOT 0x2c		/* baudrate slot generator */
-#define UINTM 0x38		/* interrupt mask register */
-
-struct s3c_uart {
-	void __iomem *regs;
-	struct console_device cdev;
-};
-
-#define to_s3c_uart(c)	container_of(c, struct s3c_uart, cdev)
-
-/* each architecture has a preferred reference clock for its UARTs */
-static unsigned s3c_select_arch_input_clock(void)
-{
-	/* S3C24xx: 0=2=PCLK, 1=UEXTCLK, 3=FCLK/n */
-	if (IS_ENABLED(CONFIG_ARCH_S3C24xx))
-		return 0;	/* use the internal PCLK */
-	/* S3C64xx: 0=2=PCLK, 1=UCLK0, 3=UCLK1 */
-	if (IS_ENABLED(CONFIG_ARCH_S3C64xx))
-		return 3;	/* use the internal UCLK1 */
-	/* S5PCxx: 0=PCLK, 1=SCLK_UART */
-	if (IS_ENABLED(CONFIG_ARCH_S5PCxx))
-		return 0;	/* use the internal PCLK */
-}
-
-static unsigned s3c_get_arch_uart_input_clock(void __iomem *base)
-{
-	unsigned reg = readw(base + UCON);
-	return s3c_get_uart_clk(UCON_GET_CLK_SRC(reg));
-}
-
-/*
- * This table takes the fractional value of the baud divisor and gives
- * the recommended setting for the UDIVSLOT register. Refer the datasheet
- * for further details
- */
-static const uint16_t udivslot_table[] __maybe_unused = {
-	0x0000, 0x0080, 0x0808, 0x0888, 0x2222, 0x4924, 0x4A52, 0x54AA,
-	0x5555, 0xD555, 0xD5D5, 0xDDD5, 0xDDDD, 0xDFDD, 0xDFDF, 0xFFDF,
-};
-
-static int s3c_serial_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	struct s3c_uart *priv = to_s3c_uart(cdev);
-	void __iomem *base = priv->regs;
-	unsigned val;
-
-	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_S3C_IMPROVED)) {
-		val = s3c_get_arch_uart_input_clock(base) / baudrate;
-		writew(udivslot_table[val & 15], base + UBRDIVSLOT);
-	}
-
-	val = s3c_get_arch_uart_input_clock(base) / (16 * baudrate) - 1;
-	writew(val, base + UBRDIV);
-
-	return 0;
-}
-
-static int s3c_serial_init_port(struct console_device *cdev)
-{
-	struct s3c_uart *priv = to_s3c_uart(cdev);
-	void __iomem *base = priv->regs;
-
-	/* FIFO enable, Tx/Rx FIFO clear */
-	writeb(0x07, base + UFCON);
-	writeb(0x00, base + UMCON);
-
-	/* Normal,No parity,1 stop,8 bit */
-	writeb(0x03, base + ULCON);
-
-	/*
-	 * S3C2440 SoC:
-	 *  - no clock divider
-	 * all SoCs:
-	 *  - enable receive and transmit mode
-	 */
-	writew(0x0005 | UCON_SET_CLK_SRC(s3c_select_arch_input_clock()),
-						base + UCON);
-
-	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_S3C_IMPROVED))
-		/* 'interrupt or polling mode' for both directions */
-		writeb(0xf, base + UINTM);
-
-	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_S3C_AUTOSYNC))
-		writeb(0x10, base + UMCON); /* enable auto flow control */
-	else
-		writeb(0x01, base + UMCON); /* RTS up */
-
-	return 0;
-}
-
-static void s3c_serial_putc(struct console_device *cdev, char c)
-{
-	struct s3c_uart *priv = to_s3c_uart(cdev);
-	void __iomem *base = priv->regs;
-
-	/* Wait for Tx FIFO not full */
-	while (!(readb(base + UTRSTAT) & 0x2))
-		;
-
-	writeb(c, base + UTXH);
-}
-
-static int s3c_serial_tstc(struct console_device *cdev)
-{
-	struct s3c_uart *priv = to_s3c_uart(cdev);
-	void __iomem *base = priv->regs;
-
-	/* If receive fifo is empty, return false */
-	if (readb(base + UTRSTAT) & 0x1)
-		return 1;
-
-	return 0;
-}
-
-static int s3c_serial_getc(struct console_device *cdev)
-{
-	struct s3c_uart *priv = to_s3c_uart(cdev);
-	void __iomem *base = priv->regs;
-
-	/* wait for a character */
-	while (!(readb(base + UTRSTAT) & 0x1))
-		;
-
-	return readb(base + URXH);
-}
-
-static void s3c_serial_flush(struct console_device *cdev)
-{
-	struct s3c_uart *priv = to_s3c_uart(cdev);
-	void __iomem *base = priv->regs;
-
-	while (!(readb(base + UTRSTAT) & 0x4))
-		;
-}
-
-static int s3c_serial_probe(struct device *dev)
-{
-	struct resource *iores;
-	struct s3c_uart *priv;
-	struct console_device *cdev;
-
-	priv = xzalloc(sizeof(struct s3c_uart));
-	cdev = &priv->cdev;
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->regs = IOMEM(iores->start);
-	dev->priv = priv;
-	cdev->dev = dev;
-	cdev->tstc = s3c_serial_tstc;
-	cdev->putc = s3c_serial_putc;
-	cdev->getc = s3c_serial_getc;
-	cdev->flush = s3c_serial_flush;
-	cdev->setbrg = s3c_serial_setbaudrate;
-
-	s3c_serial_init_port(cdev);
-
-	/* Enable UART */
-	console_register(cdev);
-
-	return 0;
-}
-
-static struct driver s3c_serial_driver = {
-	.name   = "s3c_serial",
-	.probe  = s3c_serial_probe,
-};
-console_platform_driver(s3c_serial_driver);
-- 
2.30.2



