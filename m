Delivery-date: Sat, 19 Jun 2021 05:47:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRxM-0003RH-Sh
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRxK-0002xJ-BV
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:47:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZJqhflcrTMsS4E9SG9uVJqUNgg8Qa9VOa3LUWCiG28=; b=xieRsMGBL+2AES
	kpV/AifbT5dCWWOnuaJ5NkEnVgm4BG2rduOYwICWyLHl4ds4zQFIO6HVWIxpvP7FyUQUqUjKXk9dX
	os56wjBX0Hzl5nufOcKnPKI9RRKuyaSccaaTxgs/FvhyfP5d7U1uK5k7ROXywpwohPzTZTz+g8xNR
	KyAzNf6Y+la8G7ZT7o9CJsg+ijGiDOfTAbARAHmBnyAq7hw3nNmpKOXoQ4DIyYuB3hVBo/4o7mh/X
	iKaf3p5SRyb6aHSRhBMzTINTkdrTEA5E2/rSsdD66B4WnlJt7ny9vNFIo9f1vdtTS0WHMFcnh6xwl
	T9M8kNcJJkzEbJHr5FUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRw0-00GCV4-7W; Sat, 19 Jun 2021 03:46:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRvN-00GC53-6K
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001v4-QW; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv4-00029Z-Tr; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:07 +0200
Message-Id: <20210619034516.6737-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204537_316355_3B2761BE 
X-CRM114-Status: GOOD (  19.46  )
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
Subject: [PATCH 04/13] nvmem: add support for nvmem-cells binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recently, nvmem cell and MTD partition bindings were made to coexist:
Partitions can now be compatible = "nvmem-cells"; which registers a
NVMEM provider and interprets its child nodes as cells. Teach barebox
about this. This allows fetching NVMEM cells from MTD partitions and
hostfiles.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/Makefile         |  2 +-
 drivers/nvmem/core.c           | 12 +++++-----
 drivers/nvmem/partition.c      | 40 ++++++++++++++++++++++++++++++++++
 drivers/of/partition.c         |  7 ++++++
 include/linux/nvmem-provider.h |  8 +++++++
 5 files changed, 63 insertions(+), 6 deletions(-)
 create mode 100644 drivers/nvmem/partition.c

diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 6330f3d6e681..53c02dc7850c 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -3,7 +3,7 @@
 #
 
 obj-$(CONFIG_NVMEM)		+= nvmem_core.o
-nvmem_core-y			:= core.o regmap.o
+nvmem_core-y			:= core.o regmap.o partition.o
 
 obj-$(CONFIG_NVMEM_RMEM)	+= rmem.o
 
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 3c14e390de39..c060e627db4f 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -205,7 +205,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->size = config->size;
 	nvmem->dev.parent = config->dev;
 	nvmem->bus = config->bus;
-	np = config->dev->device_node;
+	np = config->cdev ? config->cdev->device_node : config->dev->device_node;
 	nvmem->dev.device_node = np;
 	nvmem->priv = config->priv;
 
@@ -223,10 +223,12 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 		return ERR_PTR(rval);
 	}
 
-	rval = nvmem_register_cdev(nvmem, config->name);
-	if (rval) {
-		kfree(nvmem);
-		return ERR_PTR(rval);
+	if (!config->cdev) {
+		rval = nvmem_register_cdev(nvmem, config->name);
+		if (rval) {
+			kfree(nvmem);
+			return ERR_PTR(rval);
+		}
 	}
 
 	list_add_tail(&nvmem->node, &nvmem_devs);
diff --git a/drivers/nvmem/partition.c b/drivers/nvmem/partition.c
new file mode 100644
index 000000000000..3f0bdc58de40
--- /dev/null
+++ b/drivers/nvmem/partition.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <linux/nvmem-provider.h>
+
+static int nvmem_cdev_write(void *ctx, unsigned offset, const void *val, size_t bytes)
+{
+	return cdev_write(ctx, val, bytes, offset, 0);
+}
+
+static int nvmem_cdev_read(void *ctx, unsigned offset, void *buf, size_t bytes)
+{
+	return cdev_read(ctx, buf, bytes, offset, 0);
+}
+
+static struct nvmem_bus nvmem_cdev_bus = {
+	.read = nvmem_cdev_read,
+	.write = nvmem_cdev_write,
+};
+
+struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
+{
+	struct nvmem_config config = {};
+
+	config.name = cdev->name;
+	config.dev = cdev->dev;
+	config.cdev = cdev;
+	config.priv = cdev;
+	config.stride = 1;
+	config.word_size = 1;
+	config.size = cdev->size;
+	config.bus = &nvmem_cdev_bus;
+
+	return nvmem_register(&config);
+}
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index b71716218b44..b6d0523fd960 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -20,6 +20,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/err.h>
 #include <nand.h>
+#include <linux/nvmem-provider.h>
 #include <init.h>
 #include <globalvar.h>
 
@@ -83,6 +84,12 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (new)
 		new->device_node = node;;
 
+	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
+		struct nvmem_device *nvmem = nvmem_partition_register(new);
+		if (IS_ERR(nvmem))
+			dev_warn(cdev->dev, "nvmem registeration failed: %pe\n", nvmem);
+	}
+
 	free(filename);
 
 	return new;
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 2d738983736e..a293f60c1ef3 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -26,6 +26,7 @@ struct nvmem_config {
 	struct device_d		*dev;
 	const char		*name;
 	bool			read_only;
+	struct cdev		*cdev;
 	int			stride;
 	int			word_size;
 	int			size;
@@ -34,11 +35,13 @@ struct nvmem_config {
 };
 
 struct regmap;
+struct cdev;
 
 #if IS_ENABLED(CONFIG_NVMEM)
 
 struct nvmem_device *nvmem_register(const struct nvmem_config *cfg);
 struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *name);
+struct nvmem_device *nvmem_partition_register(struct cdev *cdev);
 
 #else
 
@@ -52,5 +55,10 @@ static inline struct nvmem_device *nvmem_regmap_register(struct regmap *regmap,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 #endif /* CONFIG_NVMEM */
 #endif  /* ifndef _LINUX_NVMEM_PROVIDER_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

