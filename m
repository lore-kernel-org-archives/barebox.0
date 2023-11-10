Delivery-date: Fri, 10 Nov 2023 13:59:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R76-005rY6-2o
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R72-0003V4-H9
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MG9LxK2oQ9mbGBoDzU9DLKJ7R2NW5q+oQdzIgVE/xm8=; b=e1btspj9M8INrg6efK9zZzYVDB
	ySIKkIopN3hUj6FJvocfr/08rKb4oLnzBustnh6oYDnrHhXR/V0pucOzdGcrTnxn56rvdwmQFXD8g
	ZLHwsQP615d6bXLIGiCzPWxcSjnvvEYOBXFXKkGnS2AWT6d88r9g12BBREAYg/GzdEJutBt6b1+KY
	EsNN/HcW+NBQ3s63KKozXtVcd/28q0XWD7negEnH9xMlWBe4EKxHH4MrwHkh1SyE5ikQnE/58AkCZ
	z5rzKN6RsqSYgUtfP2F8/1v3vENYpkXCcvOWikThAKBW1NSPeEl8G+tP4cZTf5ZAPtPjJsV61+dqW
	QO9hoiUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5m-008kFl-1U;
	Fri, 10 Nov 2023 12:58:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5a-008k0V-1y
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MG9LxK2oQ9mbGBoDzU9DLKJ7R2NW5q+oQdzIgVE/xm8=; b=iHNDMUC+99TSZYayhizKAft4ju
	FV0m41kPWRzdYJ08lBMTJ0SAeJ9I7GzQX+6sqmubXPMW4xi1gPCCckuBQL98wank2dVn4rxBMsZiM
	7DqWnAUs/j0gdh9V5cEdwtXnfOiLx0ZyqIujr/YzotA8trZ2u/+N9ZcEYQG/IGPmJQq9sNgnSbuDU
	jB2J3YtwyKSxv8o/vKuSaa1c8sIA3ARwvXbxCpvoLyL993bkE2GhJq/B5ZVsIhTIn21wGdLsfSqr0
	yCuT6GO169Mn8OboxQaoiPfKShGCSfsEUcSZYc6MPPlxfsNFVg/VA2ZwOm5DrR974vVUeK4Ht8eQS
	4CuBIkeQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5R-00Fbum-2e
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026t-RW; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XU-Vm; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008s0r-2o;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:49 +0100
Message-Id: <20231110125800.1901232-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125814_768822_7CBACD70 
X-CRM114-Status: GOOD (  25.06  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/25] serial: Add lpuart32 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a lpuart32 driver. This is a variant of the lpuart driver
that is found on i.MX9 and other SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/Kconfig           |   4 +
 drivers/serial/Makefile          |   1 +
 drivers/serial/serial_lpuart32.c | 185 +++++++++++++++++++++++++++++++
 include/serial/lpuart32.h        | 158 ++++++++++++++++++++++++++
 4 files changed, 348 insertions(+)
 create mode 100644 drivers/serial/serial_lpuart32.c
 create mode 100644 include/serial/lpuart32.h

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 77c827e436..803f6b6aee 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -122,6 +122,10 @@ config DRIVER_SERIAL_LPUART
 	default y
 	bool "LPUART serial driver"
 
+config DRIVER_SERIAL_LPUART32
+	depends on ARCH_IMX
+	bool "LPUART32 serial driver"
+
 config VIRTIO_CONSOLE
 	tristate "Virtio console"
 	depends on VIRTIO
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index bbc517f521..4887e24ee1 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
 obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
 obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
+obj-$(CONFIG_DRIVER_SERIAL_LPUART32)		+= serial_lpuart32.o
 obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
 obj-$(CONFIG_SERIAL_SIFIVE)			+= serial_sifive.o
 obj-$(CONFIG_SERIAL_SBI)			+= serial_sbi.o
diff --git a/drivers/serial/serial_lpuart32.c b/drivers/serial/serial_lpuart32.c
new file mode 100644
index 0000000000..0f3e7c7a04
--- /dev/null
+++ b/drivers/serial/serial_lpuart32.c
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2023 Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <notifier.h>
+#include <io.h>
+#include <of.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+#include <serial/lpuart32.h>
+
+struct lpuart32_devtype_data {
+	unsigned int reg_offs;
+};
+
+struct lpuart32 {
+	struct console_device cdev;
+	int baudrate;
+	int dte_mode;
+	struct notifier_block notify;
+	struct resource *io;
+	void __iomem *base;
+	struct clk *clk;
+};
+
+static struct lpuart32 *cdev_to_lpuart32(struct console_device *cdev)
+{
+	return container_of(cdev, struct lpuart32, cdev);
+}
+
+static void lpuart32_enable(struct lpuart32 *lpuart32)
+{
+	writel(LPUART32_UARTCTRL_TE | LPUART32_UARTCTRL_RE,
+	       lpuart32->base + LPUART32_UARTCTRL);
+}
+
+static void lpuart32_disable(struct lpuart32 *lpuart32)
+{
+	writel(0, lpuart32->base + LPUART32_UARTCTRL);
+}
+
+static int lpuart32_serial_setbaudrate(struct console_device *cdev,
+				     int baudrate)
+{
+	struct lpuart32 *lpuart32 = cdev_to_lpuart32(cdev);
+
+	lpuart32_disable(lpuart32);
+
+	/*
+	 * We treat baudrate of 0 as a request to disable UART
+	 */
+	if (baudrate) {
+		lpuart32_setbrg(lpuart32->base, clk_get_rate(lpuart32->clk),
+			      baudrate);
+		lpuart32_enable(lpuart32);
+	}
+
+	lpuart32->baudrate = baudrate;
+
+	return 0;
+}
+
+static int lpuart32_serial_getc(struct console_device *cdev)
+{
+	struct lpuart32 *lpuart32 = cdev_to_lpuart32(cdev);
+
+	while (!(readl(lpuart32->base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_RDRF));
+
+	return readl(lpuart32->base + LPUART32_UARTDATA) & 0xff;
+}
+
+static void lpuart32_serial_putc(struct console_device *cdev, char c)
+{
+	struct lpuart32 *lpuart32 = cdev_to_lpuart32(cdev);
+
+	lpuart32_putc(lpuart32->base, c);
+}
+
+/* Test whether a character is in the RX buffer */
+static int lpuart32_serial_tstc(struct console_device *cdev)
+{
+	struct lpuart32 *lpuart32 = cdev_to_lpuart32(cdev);
+
+	return readl(lpuart32->base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_RDRF;
+}
+
+static void lpuart32_serial_flush(struct console_device *cdev)
+{
+}
+
+static int lpuart32_serial_probe(struct device *dev)
+{
+	int ret;
+	struct console_device *cdev;
+	struct lpuart32 *lpuart32;
+	const char *devname;
+	struct lpuart32_devtype_data *devtype;
+
+	ret = dev_get_drvdata(dev, (const void **)&devtype);
+	if (ret)
+		return ret;
+
+	lpuart32 = xzalloc(sizeof(*lpuart32));
+	cdev = &lpuart32->cdev;
+	dev->priv = lpuart32;
+
+	lpuart32->io = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(lpuart32->io)) {
+		ret = PTR_ERR(lpuart32->io);
+		goto err_free;
+	}
+	lpuart32->base = IOMEM(lpuart32->io->start) + devtype->reg_offs;
+
+	lpuart32->clk = clk_get(dev, NULL);
+	if (IS_ERR(lpuart32->clk)) {
+		ret = PTR_ERR(lpuart32->clk);
+		dev_err(dev, "Failed to get UART clock %d\n", ret);
+		goto io_release;
+	}
+
+	ret = clk_enable(lpuart32->clk);
+	if (ret) {
+		dev_err(dev, "Failed to enable UART clock %d\n", ret);
+		goto io_release;
+	}
+
+	cdev->dev    = dev;
+	cdev->tstc   = lpuart32_serial_tstc;
+	cdev->putc   = lpuart32_serial_putc;
+	cdev->getc   = lpuart32_serial_getc;
+	cdev->flush  = lpuart32_serial_flush;
+	cdev->setbrg = lpuart32_serial_setbaudrate;
+
+	if (dev->of_node) {
+		devname = of_alias_get(dev->of_node);
+		if (devname) {
+			cdev->devname = xstrdup(devname);
+			cdev->devid   = DEVICE_ID_SINGLE;
+		}
+	}
+
+	cdev->linux_console_name = "ttyLP";
+	cdev->linux_earlycon_name = "lpuart";
+	cdev->phys_base = lpuart32->base;
+
+	lpuart32_setup(lpuart32->base, clk_get_rate(lpuart32->clk));
+
+	ret = console_register(cdev);
+	if (!ret)
+		return 0;
+
+	clk_put(lpuart32->clk);
+io_release:
+	release_region(lpuart32->io);
+err_free:
+	free(lpuart32);
+
+	return ret;
+}
+
+static struct lpuart32_devtype_data imx7ulp_data = {
+	.reg_offs = 0x10,
+};
+
+static struct of_device_id lpuart32_serial_dt_ids[] = {
+	{
+		.compatible = "fsl,imx7ulp-lpuart",
+		.data = &imx7ulp_data,
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, lpuart32_serial_dt_ids);
+
+static struct driver lpuart32_serial_driver = {
+	.name   = "lpuart32-serial",
+	.probe  = lpuart32_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(lpuart32_serial_dt_ids),
+};
+console_platform_driver(lpuart32_serial_driver);
diff --git a/include/serial/lpuart32.h b/include/serial/lpuart32.h
new file mode 100644
index 0000000000..bcfd067113
--- /dev/null
+++ b/include/serial/lpuart32.h
@@ -0,0 +1,158 @@
+/*
+ * Copyright (c) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * Based on code found in Linux kernel and U-Boot.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __lpuart32_H__
+#define __lpuart32_H__
+
+
+/* 32-bit register definition */
+#define LPUART32_UARTBAUD		0x00
+#define LPUART32_UARTSTAT		0x04
+#define LPUART32_UARTCTRL		0x08
+#define LPUART32_UARTDATA		0x0C
+#define LPUART32_UARTMATCH		0x10
+#define LPUART32_UARTMODIR		0x14
+#define LPUART32_UARTFIFO		0x18
+#define LPUART32_UARTWATER		0x1c
+
+#define LPUART32_UARTBAUD_MAEN1		0x80000000
+#define LPUART32_UARTBAUD_MAEN2		0x40000000
+#define LPUART32_UARTBAUD_M10		0x20000000
+#define LPUART32_UARTBAUD_TDMAE		0x00800000
+#define LPUART32_UARTBAUD_RDMAE		0x00200000
+#define LPUART32_UARTBAUD_MATCFG	0x00400000
+#define LPUART32_UARTBAUD_BOTHEDGE	0x00020000
+#define LPUART32_UARTBAUD_RESYNCDIS	0x00010000
+#define LPUART32_UARTBAUD_LBKDIE	0x00008000
+#define LPUART32_UARTBAUD_RXEDGIE	0x00004000
+#define LPUART32_UARTBAUD_SBNS		0x00002000
+#define LPUART32_UARTBAUD_SBR		0x00000000
+#define LPUART32_UARTBAUD_SBR_MASK	0x1fff
+#define LPUART32_UARTBAUD_OSR_MASK	0x1f
+#define LPUART32_UARTBAUD_OSR_SHIFT	24
+
+#define LPUART32_UARTSTAT_LBKDIF	0x80000000
+#define LPUART32_UARTSTAT_RXEDGIF	0x40000000
+#define LPUART32_UARTSTAT_MSBF		0x20000000
+#define LPUART32_UARTSTAT_RXINV		0x10000000
+#define LPUART32_UARTSTAT_RWUID		0x08000000
+#define LPUART32_UARTSTAT_BRK13		0x04000000
+#define LPUART32_UARTSTAT_LBKDE		0x02000000
+#define LPUART32_UARTSTAT_RAF		0x01000000
+#define LPUART32_UARTSTAT_TDRE		0x00800000
+#define LPUART32_UARTSTAT_TC		0x00400000
+#define LPUART32_UARTSTAT_RDRF		0x00200000
+#define LPUART32_UARTSTAT_IDLE		0x00100000
+#define LPUART32_UARTSTAT_OR		0x00080000
+#define LPUART32_UARTSTAT_NF		0x00040000
+#define LPUART32_UARTSTAT_FE		0x00020000
+#define LPUART32_UARTSTAT_PE		0x00010000
+#define LPUART32_UARTSTAT_MA1F		0x00008000
+#define LPUART32_UARTSTAT_M21F		0x00004000
+
+#define LPUART32_UARTCTRL_R8T9		0x80000000
+#define LPUART32_UARTCTRL_R9T8		0x40000000
+#define LPUART32_UARTCTRL_TXDIR		0x20000000
+#define LPUART32_UARTCTRL_TXINV		0x10000000
+#define LPUART32_UARTCTRL_ORIE		0x08000000
+#define LPUART32_UARTCTRL_NEIE		0x04000000
+#define LPUART32_UARTCTRL_FEIE		0x02000000
+#define LPUART32_UARTCTRL_PEIE		0x01000000
+#define LPUART32_UARTCTRL_TIE		0x00800000
+#define LPUART32_UARTCTRL_TCIE		0x00400000
+#define LPUART32_UARTCTRL_RIE		0x00200000
+#define LPUART32_UARTCTRL_ILIE		0x00100000
+#define LPUART32_UARTCTRL_TE		0x00080000
+#define LPUART32_UARTCTRL_RE		0x00040000
+#define LPUART32_UARTCTRL_RWU		0x00020000
+#define LPUART32_UARTCTRL_SBK		0x00010000
+#define LPUART32_UARTCTRL_MA1IE		0x00008000
+#define LPUART32_UARTCTRL_MA2IE		0x00004000
+#define LPUART32_UARTCTRL_IDLECFG	GENMASK(10, 8)
+#define LPUART32_UARTCTRL_LOOPS		0x00000080
+#define LPUART32_UARTCTRL_DOZEEN	0x00000040
+#define LPUART32_UARTCTRL_RSRC		0x00000020
+#define LPUART32_UARTCTRL_M		0x00000010
+#define LPUART32_UARTCTRL_WAKE		0x00000008
+#define LPUART32_UARTCTRL_ILT		0x00000004
+#define LPUART32_UARTCTRL_PE		0x00000002
+#define LPUART32_UARTCTRL_PT		0x00000001
+
+#define LPUART32_UARTDATA_NOISY		0x00008000
+#define LPUART32_UARTDATA_PARITYE	0x00004000
+#define LPUART32_UARTDATA_FRETSC	0x00002000
+#define LPUART32_UARTDATA_RXEMPT	0x00001000
+#define LPUART32_UARTDATA_IDLINE	0x00000800
+#define LPUART32_UARTDATA_MASK		0x3ff
+
+#define LPUART32_UARTMODIR_IREN		0x00020000
+#define LPUART32_UARTMODIR_RTSWATER	GENMASK(10, 8)
+#define LPUART32_UARTMODIR_TXCTSSRC	0x00000020
+#define LPUART32_UARTMODIR_TXCTSC	0x00000010
+#define LPUART32_UARTMODIR_RXRTSE	0x00000008
+#define LPUART32_UARTMODIR_TXRTSPOL	0x00000004
+#define LPUART32_UARTMODIR_TXRTSE	0x00000002
+#define LPUART32_UARTMODIR_TXCTSE	0x00000001
+
+#define LPUART32_UARTFIFO_TXEMPT	0x00800000
+#define LPUART32_UARTFIFO_RXEMPT	0x00400000
+#define LPUART32_UARTFIFO_TXOF		0x00020000
+#define LPUART32_UARTFIFO_RXUF		0x00010000
+#define LPUART32_UARTFIFO_TXFLUSH	0x00008000
+#define LPUART32_UARTFIFO_RXFLUSH	0x00004000
+#define LPUART32_UARTFIFO_RXIDEN	GENMASK(12, 10)
+#define LPUART32_UARTFIFO_TXOFE		0x00000200
+#define LPUART32_UARTFIFO_RXUFE		0x00000100
+#define LPUART32_UARTFIFO_TXFE		0x00000080
+#define LPUART32_UARTFIFO_FIFOSIZE_MASK	0x7
+#define LPUART32_UARTFIFO_TXSIZE_OFF	4
+#define LPUART32_UARTFIFO_RXFE		0x00000008
+#define LPUART32_UARTFIFO_RXSIZE_OFF	0
+#define LPUART32_UARTFIFO_DEPTH(x)	(0x1 << ((x) ? ((x) + 1) : 0))
+
+#define LPUART32_UARTWATER_COUNT_MASK	0xff
+#define LPUART32_UARTWATER_TXCNT_OFF	8
+#define LPUART32_UARTWATER_RXCNT_OFF	24
+#define LPUART32_UARTWATER_WATER_MASK	0xff
+#define LPUART32_UARTWATER_TXWATER_OFF	0
+#define LPUART32_UARTWATER_RXWATER_OFF	16
+
+static inline void lpuart32_setbrg(void __iomem *base,
+				 unsigned int refclock,
+				 unsigned int baudrate)
+{
+	u32 sbr;
+
+	sbr = (refclock / (16 * baudrate));
+	writel(sbr, base + LPUART32_UARTBAUD);
+}
+
+static inline void lpuart32_setup(void __iomem *base,
+				unsigned int refclock)
+{
+	lpuart32_setbrg(base, refclock, CONFIG_BAUDRATE);
+	writel(LPUART32_UARTCTRL_TE | LPUART32_UARTCTRL_RE, base + LPUART32_UARTCTRL);
+}
+
+static inline void lpuart32_putc(void __iomem *base, int c)
+{
+	while (!(readl(base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_TDRE));
+
+	writel(c, base + LPUART32_UARTDATA);
+}
+
+#endif
-- 
2.39.2



