Delivery-date: Tue, 27 Apr 2021 22:25:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGS-0006Yy-9u
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:25:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGQ-00067c-Tx
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:25:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xm7H7+mAzipAXyKavIEb4NkPdo9b0xL7CHSilbzP0rQ=; b=BTrV2V+s3PSef4L0dDNTnabdd
	1U6y9uHuLpgZBr8VWG+Fje8I8TAt44EJekxxyluaRq6CKI4Vk6urA+MMreaH+H2mnbcc+ZF9mO0e0
	of/Q5DS/oVKTrbS0YeXJYtGbzfq69Lx4cx7yocsEjMbT8napwUcHM68JPKFbACi1OjYGFtfv+1xcB
	JVdlkhJj6Q66p9hB/+fmaKwpVO+VJp+ppn7NkskW4uCK8LXiOYTY4yYdphhAnU0o7mtKaLCQ92vg2
	RL/xqRUgQ1VCSpa2lVMqFELuW8jWH244ylwy2Y6H0ffUFDVUWtWu8S34KxoxOI9DXRgU1hSp7AlIQ
	cbKme/eNw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFW-002BxV-I2; Tue, 27 Apr 2021 20:24:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUF0-002Br5-Oz
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=YYxIn7N/1pfZ5UpGyqzYrs7jKOtUVR+EB8iLvwSxEIA=; b=s5sdzCOM9mjHYlle6BvNIMqhoh
 R8rSifk4Re0VVPM8F71CqNHyfd+VumTdTODADkZLJAiKaa250cq8NJMl9iP0MumLTfeI7BWBStEW2
 1TO0RbKWUjsOyzRJcZtGGIbr9MZNoMvKpkxSq3TDM8eitgZLPBJyrLZTHWPYewTa2fnXvjMJz1yZ6
 MAOwbXRY9TbTC1ARDpZsKCqXR417skUCl8w57VhHJhxqF+SaX4fOPvKCxqQ2q5i4CCANQA7Nad1lx
 92TAu0ZifwdQw70A8FcxNHUGeNuNGApTg8/EGTjMOT3S1Xka4qB57Jd3u9+1a/UbDKKEhT7pSderZ
 SFPpXO+A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEy-00GyJO-2l
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005XU-Pd; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEl-00016P-VZ; Tue, 27 Apr 2021 22:23:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:22:59 +0200
Message-Id: <20210427202309.32077-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132328_145574_62D600CA 
X-CRM114-Status: GOOD (  22.24  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/12] serial: implement SiFive UART support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import serial driver from Linux v5.11.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/Kconfig         |   9 ++
 drivers/serial/Makefile        |   1 +
 drivers/serial/serial_sifive.c | 171 +++++++++++++++++++++++++++++++++
 3 files changed, 181 insertions(+)
 create mode 100644 drivers/serial/serial_sifive.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index db924efa02a6..b9750d1774f8 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -164,4 +164,13 @@ config VIRTIO_CONSOLE
 
 	  Also serves as a general-purpose serial device for data
 	  transfer between the guest and host.
+
+config SERIAL_SIFIVE
+	tristate "SiFive UART support"
+	depends on OFDEVICE
+	help
+	  Select this option if you are building barebox for a device that
+	  contains a SiFive UART IP block.  This type of UART is present on
+	  SiFive FU540 SoCs, among others.
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 7ff41cd5c744..5120b1737664 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -23,3 +23,4 @@ obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
 obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
 obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
+obj-$(CONFIG_SERIAL_SIFIVE)			+= serial_sifive.o
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
new file mode 100644
index 000000000000..45f7c2bc9ace
--- /dev/null
+++ b/drivers/serial/serial_sifive.c
@@ -0,0 +1,171 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018 Anup Patel <anup@brainfault.org>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <io.h>
+#include <of.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+
+#define UART_TXFIFO_FULL	0x80000000
+#define UART_RXFIFO_EMPTY	0x80000000
+#define UART_RXFIFO_DATA	0x000000ff
+#define UART_TXCTRL_TXEN	0x1
+#define UART_RXCTRL_RXEN	0x1
+
+/* IP register */
+#define UART_IP_RXWM            0x2
+
+struct sifive_serial_regs {
+	u32 txfifo;
+	u32 rxfifo;
+	u32 txctrl;
+	u32 rxctrl;
+	u32 ie;
+	u32 ip;
+	u32 div;
+};
+
+struct sifive_serial_priv {
+	unsigned long freq;
+	struct sifive_serial_regs __iomem *regs;
+	struct console_device cdev;
+};
+
+#define to_priv(cdev) container_of(cdev, struct sifive_serial_priv, cdev)
+
+/**
+ * Find minimum divisor divides in_freq to max_target_hz;
+ * Based on uart driver n SiFive FSBL.
+ *
+ * f_baud = f_in / (div + 1) => div = (f_in / f_baud) - 1
+ * The nearest integer solution requires rounding up as to not exceed
+ * max_target_hz.
+ * div  = ceil(f_in / f_baud) - 1
+ *	= floor((f_in - 1 + f_baud) / f_baud) - 1
+ * This should not overflow as long as (f_in - 1 + f_baud) does not exceed
+ * 2^32 - 1, which is unlikely since we represent frequencies in kHz.
+ */
+static inline unsigned int uart_min_clk_divisor(unsigned long in_freq,
+						unsigned long max_target_hz)
+{
+	unsigned long quotient =
+			(in_freq + max_target_hz - 1) / (max_target_hz);
+	/* Avoid underflow */
+	if (quotient == 0)
+		return 0;
+	else
+		return quotient - 1;
+}
+
+static void sifive_serial_init(struct sifive_serial_regs __iomem *regs)
+{
+	writel(UART_TXCTRL_TXEN, &regs->txctrl);
+	writel(UART_RXCTRL_RXEN, &regs->rxctrl);
+	writel(0, &regs->ie);
+}
+
+static int sifive_serial_setbrg(struct console_device *cdev, int baudrate)
+{
+	struct sifive_serial_priv *priv = to_priv(cdev);
+
+	writel((uart_min_clk_divisor(priv->freq, baudrate)), &priv->regs->div);
+
+	return 0;
+}
+
+static int sifive_serial_getc(struct console_device *cdev)
+{
+	struct sifive_serial_regs __iomem *regs = to_priv(cdev)->regs;
+	u32 ch;
+
+	do {
+		ch = readl(&regs->rxfifo);
+	} while (ch & UART_RXFIFO_EMPTY);
+
+	return ch & UART_RXFIFO_DATA;
+}
+
+static void sifive_serial_putc(struct console_device *cdev, const char ch)
+{
+	struct sifive_serial_regs __iomem *regs = to_priv(cdev)->regs;
+
+	// TODO: how to check for !empty to utilize fifo?
+	while (readl(&regs->txfifo) & UART_TXFIFO_FULL)
+		;
+
+	writel(ch, &regs->txfifo);
+}
+
+static int sifive_serial_tstc(struct console_device *cdev)
+{
+	struct sifive_serial_regs __iomem *regs = to_priv(cdev)->regs;
+
+	return readl(&regs->ip) & UART_IP_RXWM;
+}
+
+static void sifive_serial_flush(struct console_device *cdev)
+{
+	struct sifive_serial_regs __iomem *regs = to_priv(cdev)->regs;
+
+	while (readl(&regs->txfifo) & UART_TXFIFO_FULL)
+		;
+}
+
+static int sifive_serial_probe(struct device_d *dev)
+{
+	struct sifive_serial_priv *priv;
+	struct resource *iores;
+	struct clk *clk;
+	u32 freq;
+	int ret;
+
+	clk = clk_get(dev, NULL);
+	if (!IS_ERR(clk)) {
+		freq = clk_get_rate(clk);
+	} else {
+		dev_dbg(dev, "failed to get clock. Fallback to device tree.\n");
+
+		ret = of_property_read_u32(dev->device_node, "clock-frequency", &freq);
+		if (ret) {
+			dev_warn(dev, "unknown clock frequency\n");
+			return ret;
+		}
+	}
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->freq = freq;
+	priv->regs = IOMEM(iores->start);
+
+	priv->cdev.dev = dev;
+	priv->cdev.putc = sifive_serial_putc;
+	priv->cdev.getc = sifive_serial_getc;
+	priv->cdev.tstc = sifive_serial_tstc;
+	priv->cdev.flush = sifive_serial_flush;
+	priv->cdev.setbrg = sifive_serial_setbrg,
+
+	sifive_serial_init(priv->regs);
+
+	return console_register(&priv->cdev);
+}
+
+static __maybe_unused struct of_device_id sifive_serial_dt_ids[] = {
+	{ .compatible = "sifive,uart0" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d serial_sifive_driver = {
+	.name   = "serial_sifive",
+	.probe  = sifive_serial_probe,
+	.of_compatible = sifive_serial_dt_ids,
+};
+console_platform_driver(serial_sifive_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

