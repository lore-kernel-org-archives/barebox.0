Delivery-date: Sat, 19 Jun 2021 05:47:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRx4-0003QJ-Re
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRx2-0002oF-Jj
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+X8rC/AIZg8+yUtk73eGExbt/hP9tg9a4lZ7EJiJk0=; b=o3ourdXejBLpXh
	MEl4NpOf0dVO5uDFWJlHlULOkfvQ0vInioMmR5lYFjp2Ibj9WqGaiGe3DMYn6FZdQC2qorNzY9GuU
	/HPDj4q+/1mkQIZt7NBvO3DLp+IrwIkrZS1Ig+hC0gR5STn18cPYobaGW8THwGxOLgK6NItUUChqR
	r9sSdiIPsJAE+z1BelHrT6My+YVrKGfHwfO/8hqsmzPlb3yJTao3g8v3cumSL3C8lIOVKgKehWwNr
	6iAKbjb9c0clckhk/V0xA+20W4SKFCjm3mX42f9R0tJYbyHa98KkyLJnx2KxKu6neQk3PAu1rcd4t
	AKP0o/EsphIJUcpSrGVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvo-00GCLn-Hk; Sat, 19 Jun 2021 03:46:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRvF-00GC1Y-6o
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001v3-S3; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv4-00029W-TC; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:06 +0200
Message-Id: <20210619034516.6737-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204529_321559_F1704B14 
X-CRM114-Status: GOOD (  21.51  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/13] nvmem: add support for new read-only memory (rmem)
 binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Only upstream user of this binding is the raspberry pi 4 DT, where it's
used to pass along bootloader-provided info to Linux. We have instances
in barebox, where a previous stage bootloader passes along a memory
region with info for barebox to interpret. This could in future be
modelled as nvmem-rmem nodes. The binding is also quite handy for
debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/Kconfig  |  6 ++++
 drivers/nvmem/Makefile |  2 ++
 drivers/nvmem/rmem.c   | 67 ++++++++++++++++++++++++++++++++++++++++++
 drivers/of/base.c      | 21 ++++++++++---
 fs/devfs-core.c        |  2 +-
 include/driver.h       |  3 ++
 6 files changed, 96 insertions(+), 5 deletions(-)
 create mode 100644 drivers/nvmem/rmem.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index e4a72b1431a9..0d7c0b7b9e3d 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -9,6 +9,12 @@ menuconfig NVMEM
 
 if NVMEM
 
+config NVMEM_RMEM
+	bool "Reserved Memory Based Driver Support"
+	help
+	  This driver maps reserved memory into an nvmem device. It might be
+	  useful to expose information left by firmware in memory.
+
 config NVMEM_SNVS_LPGPR
 	tristate "Freescale SNVS LPGPR support"
 	select MFD_SYSCON
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 617e3725a726..6330f3d6e681 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -5,6 +5,8 @@
 obj-$(CONFIG_NVMEM)		+= nvmem_core.o
 nvmem_core-y			:= core.o regmap.o
 
+obj-$(CONFIG_NVMEM_RMEM)	+= rmem.o
+
 # Devices
 obj-$(CONFIG_NVMEM_SNVS_LPGPR)	+= nvmem_snvs_lpgpr.o
 nvmem_snvs_lpgpr-y		:= snvs_lpgpr.o
diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
new file mode 100644
index 000000000000..e103cec4482a
--- /dev/null
+++ b/drivers/nvmem/rmem.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
+ */
+
+#include <io.h>
+#include <driver.h>
+#include <linux/nvmem-provider.h>
+#include <init.h>
+
+struct rmem {
+	struct device_d *dev;
+	const struct resource *mem;
+};
+
+static int rmem_read(void *context, unsigned int offset,
+		     void *val, size_t bytes)
+{
+	struct rmem *rmem = context;
+	return mem_copy(rmem->dev, val, (void *)rmem->mem->start + offset,
+			bytes, offset, 0);
+}
+
+static struct nvmem_bus rmem_nvmem_bus = {
+	.read = rmem_read,
+};
+
+static int rmem_probe(struct device_d *dev)
+{
+	struct nvmem_config config = { };
+	struct resource *mem;
+	struct rmem *priv;
+
+	mem = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(mem))
+		return PTR_ERR(mem);
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->mem = mem;
+
+	config.dev = priv->dev = dev;
+	config.priv = priv;
+	config.name = "rmem";
+	config.size = resource_size(mem);
+	config.bus = &rmem_nvmem_bus;
+
+	return PTR_ERR_OR_ZERO(nvmem_register(&config));
+}
+
+static const struct of_device_id rmem_match[] = {
+	{ .compatible = "nvmem-rmem", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d rmem_driver = {
+	.name = "rmem",
+	.of_compatible = rmem_match,
+	.probe = rmem_probe,
+};
+device_platform_driver(rmem_driver);
+
+MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de>");
+MODULE_DESCRIPTION("Reserved Memory Based nvmem Driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 193bae7fa017..015629e1e967 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2331,9 +2331,14 @@ static void of_platform_device_create_root(struct device_node *np)
 		free(dev);
 }
 
+static const struct of_device_id reserved_mem_matches[] = {
+	{ .compatible = "nvmem-rmem" },
+	{}
+};
+
 int of_probe(void)
 {
-	struct device_node *firmware;
+	struct device_node *node;
 	int ret;
 
 	if(!root_node)
@@ -2347,9 +2352,17 @@ int of_probe(void)
 
 	ret = of_probe_memory();
 
-	firmware = of_find_node_by_path("/firmware");
-	if (firmware)
-		of_platform_populate(firmware, NULL, NULL);
+	/*
+	 * Handle certain compatibles explicitly, since we don't want to create
+	 * platform_devices for every node in /reserved-memory with a
+	 * "compatible",
+	 */
+	for_each_matching_node(node, reserved_mem_matches)
+		of_platform_device_create(node, NULL);
+
+	node = of_find_node_by_path("/firmware");
+	if (node)
+		of_platform_populate(node, NULL, NULL);
 
 	of_platform_device_create_root(root_node);
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index f804f969745c..30ad0e050835 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -529,7 +529,7 @@ void cdev_remove_loop(struct cdev *cdev)
 	free(cdev);
 }
 
-static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
+ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 			resource_size_t count, resource_size_t offset,
 			unsigned long flags)
 {
diff --git a/include/driver.h b/include/driver.h
index d84fe35d5063..c7f5903fcea0 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -347,6 +347,9 @@ struct cdev;
 /* These are used by drivers which work with direct memory accesses */
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
+ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
+		 resource_size_t count, resource_size_t offset,
+		 unsigned long flags);
 
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

