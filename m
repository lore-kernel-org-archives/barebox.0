Delivery-date: Mon, 17 Jun 2024 13:42:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAkv-007Z2N-38
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:42:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAkv-0008Cg-6l
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Aopvsq6LnRDAImXMc0xJiB8DZhep8RpG0dd/Y7LvIwU=; b=PLErl5gkcMCN7EAm2ZiZNZjI5q
	emkVSbK+cp289Adl/3oEeYn/bT8ehs3e1/kbL74V5qIIrnwEkL1wMHvRRfnwr06Mj5c107TNT2J28
	m12N9Z7M/gtuucByILO2T6w57RDEMJ9n/W4Pa5uhsJHWyEonKaQKcVpRolf1RSuxox+O3nXQe0gL3
	msmSLTRGJ47M2c1Y7EyBBZGIW1TDeXqTVSeBq64h1WYcjSup3KXs5bimugKRYG0yngcFovS1Ct67i
	dza+VLlGZeqqEcECbkUIvIHDeDByNBQIWNVF1eUSPpjWTJrLsx0YCrd6OMAQh6oUWGYoyNICyHtP7
	OhBuCUOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAkU-0000000AXOZ-3e7B;
	Mon, 17 Jun 2024 11:42:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAkR-0000000AXN2-2iYc
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:42:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAkQ-00080R-99; Mon, 17 Jun 2024 13:42:06 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAkP-002y1C-T1; Mon, 17 Jun 2024 13:42:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAkP-006UTs-2c;
	Mon, 17 Jun 2024 13:42:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2024 13:42:00 +0200
Message-Id: <20240617114200.1547118-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_044207_709935_4BBFE277 
X-CRM114-Status: GOOD (  20.03  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] misc: add /dev/port device for I/O ports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For MMIO, we have /dev/mem and the iomem command, but for I/O ports, we
only have the ioport command and no way to access I/O ports from shell.

Add a /dev/port device that interacts directly with I/O ports.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/Kconfig  |   4 ++
 drivers/misc/Makefile |   1 +
 drivers/misc/port.c   | 158 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 163 insertions(+)
 create mode 100644 drivers/misc/port.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 78c9c193d835..40482f8b88a7 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -24,6 +24,10 @@ config STATE_DRV
 config DEV_MEM
         bool "Generic memory I/O device (/dev/mem)"
 
+config DEV_PORT
+	bool "Generic port I/O device (/dev/port)"
+	depends on X86 || SANDBOX || COMPILE_TEST
+
 config UBOOTVAR
 	bool "U-Boot environment storage"
 	depends on OFTREE
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 986f7b1b381b..871af85d5920 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_DEV_MEM)		+= mem.o
+obj-$(CONFIG_DEV_PORT)		+= port.o
 obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
 obj-$(CONFIG_STARFIVE_PWRSEQ)	+= starfive-pwrseq.o
 obj-$(CONFIG_STORAGE_BY_UUID)	+= storage-by-uuid.o
diff --git a/drivers/misc/port.c b/drivers/misc/port.c
new file mode 100644
index 000000000000..ddc443eb16df
--- /dev/null
+++ b/drivers/misc/port.c
@@ -0,0 +1,158 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <fcntl.h>
+#include <init.h>
+
+static ssize_t port_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
+		 unsigned long flags)
+{
+	struct device *dev = cdev->dev;
+	ssize_t size;
+	int rwsize = (flags & (O_RWSIZE_1 | O_RWSIZE_2 | O_RWSIZE_4));
+
+	if (!dev)
+		return -1;
+
+
+	if (!dev || dev->num_resources < 1)
+		return -1;
+
+	if (resource_size(&dev->resource[0]) > 0 || offset != 0)
+		count = min_t(size_t, count,
+			      resource_size(&dev->resource[0]) - offset);
+
+	size = count;
+
+	/* no rwsize specification given. Use maximum */
+	if (!rwsize)
+		rwsize = 4;
+
+	rwsize = rwsize >> O_RWSIZE_SHIFT;
+
+	count = ALIGN_DOWN(count, rwsize);
+
+	while (count) {
+		switch (rwsize) {
+		case 1:
+			*((u8 *)buf) = inb(offset);
+			break;
+		case 2:
+			*((u16 *)buf) = inw(offset);
+			break;
+		case 4:
+			*((u32  *)buf) = inl(offset);
+			break;
+		}
+		buf += rwsize;
+		offset += rwsize;
+		count -= rwsize;
+	}
+
+	return size;
+}
+
+static ssize_t port_write(struct cdev *cdev, const void *buf, size_t count,
+			  loff_t offset, unsigned long flags)
+{
+	struct device *dev = cdev->dev;
+	ssize_t size;
+	int rwsize = (flags & (O_RWSIZE_1 | O_RWSIZE_2 | O_RWSIZE_4));
+
+	if (!dev)
+		return -1;
+
+	if (!dev || dev->num_resources < 1)
+		return -1;
+
+	if (resource_size(&dev->resource[0]) > 0 || offset != 0)
+		count = min_t(size_t, count, resource_size(&dev->resource[0]) - offset);
+	size = count;
+
+	/* no rwsize specification given. Use maximum */
+	if (!rwsize)
+		rwsize = 4;
+
+	rwsize = rwsize >> O_RWSIZE_SHIFT;
+
+	count = ALIGN_DOWN(count, rwsize);
+
+	while (count) {
+		switch (rwsize) {
+		case 1:
+			outb(*((u8 *)buf), offset);
+			break;
+		case 2:
+			outw(*((u16 *)buf), offset);
+			break;
+		case 4:
+			outl(*((u32 *)buf), offset);
+			break;
+		}
+		buf += rwsize;
+		offset += rwsize;
+		count -= rwsize;
+	}
+
+	return size;
+}
+
+static struct cdev_operations portops = {
+	.read  = port_read,
+	.write = port_write,
+};
+
+static int port_probe(struct device *dev)
+{
+	struct cdev *cdev;
+
+	cdev = xzalloc(sizeof (*cdev));
+	dev->priv = cdev;
+
+	cdev->name = (char*)dev->resource[0].name;
+	cdev->size = resource_size(&dev->resource[0]);
+
+	cdev->ops = &portops;
+	cdev->dev = dev;
+
+	devfs_create(cdev);
+
+	return 0;
+}
+
+static struct driver port_drv = {
+	.name  = "port",
+	.probe = port_probe,
+};
+
+static int port_init(void)
+{
+	struct device *dev;
+	struct resource res = {
+		.start = 0,
+		.end = IO_SPACE_LIMIT,
+		.flags = IORESOURCE_IO,
+		.name = "port",
+	};
+	int ret;
+
+	dev = device_alloc("port", DEVICE_ID_DYNAMIC);
+	if (!dev)
+		return -ENOMEM;
+
+	dev->resource = xmemdup(&res, sizeof(res));
+	dev->num_resources = 1;
+
+	ret = platform_device_register(dev);
+	if (ret)
+		return ret;
+
+	pr_notice("I/O port base %p\n", PCI_IOBASE);
+
+	return platform_driver_register(&port_drv);
+}
+device_initcall(port_init);
-- 
2.39.2



