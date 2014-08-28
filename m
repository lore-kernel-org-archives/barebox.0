Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s1.linux-source.de ([46.38.235.25])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMvi5-0002fM-BF
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 09:09:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by s1.linux-source.de (Postfix) with ESMTP id 9AC081808DC
 for <barebox@lists.infradead.org>; Thu, 28 Aug 2014 10:59:52 +0200 (CEST)
Received: from s1.linux-source.de ([127.0.0.1])
 by localhost (v22010076022355399.yourvserver.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 0TV7qy8RD__r for <barebox@lists.infradead.org>;
 Thu, 28 Aug 2014 10:59:51 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 28 Aug 2014 10:59:51 +0200
From: basti@linux-source.de
Message-ID: <98034ceb4fe0a107abef0beb3fd1380c@linux-source.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd: add mtdram device (which build mtd over ram area -
 useful for FRAM oder MRAM)
To: barebox@lists.infradead.org

This adds support for MTD in RAM devices (like FRAM or MRAM).

Signed-off-by: Sebastian Block <basti@linux-source.de>

---
  drivers/mtd/devices/Kconfig  |    6 ++
  drivers/mtd/devices/Makefile |    1 +
  drivers/mtd/devices/mtdram.c |  132 
++++++++++++++++++++++++++++++++++++++++++
  3 files changed, 139 insertions(+)
  create mode 100644 drivers/mtd/devices/mtdram.c

diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
index 94668a2..c512242 100644
--- a/drivers/mtd/devices/Kconfig
+++ b/drivers/mtd/devices/Kconfig
@@ -64,4 +64,10 @@ config MTD_DOCG3
           M-Systems and now Sandisk. The support is very experimental,
           and doesn't give access to any write operations.

+config MTD_MTDRAM
+       tristate "Provide test driver using RAM"
+       help
+         This enables a test MTD device driver which uses RAM to
+         provide storage.
+
  endmenu
diff --git a/drivers/mtd/devices/Makefile b/drivers/mtd/devices/Makefile
index bf1f8a9..bc1960e 100644
--- a/drivers/mtd/devices/Makefile
+++ b/drivers/mtd/devices/Makefile
@@ -5,3 +5,4 @@
  obj-$(CONFIG_MTD_DATAFLASH)    += mtd_dataflash.o
  obj-$(CONFIG_MTD_DOCG3)                += docg3.o
  obj-$(CONFIG_MTD_M25P80)       += m25p80.o
+obj-$(CONFIG_MTD_MTDRAM)       += mtdram.o
diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
new file mode 100644
index 0000000..bd0bbb4
--- /dev/null
+++ b/drivers/mtd/devices/mtdram.c
@@ -0,0 +1,132 @@
+/*
+ * MTD RAM driver - a mtd test device driver
+ *
+ * Author: Sebastian Block <basti@linux-source.de>
+ * Copyright (c) 2014
+ *
+ * Some parts are based on mtdram.c found in Linux kernel
+ * by   Alexander Larsson <alex@cendio.se>
+ * and  Joern Engel <joern@wh.fh-wedel.de>.
+ *
+ * This code is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <common.h>
+#include <environment.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <linux/mtd/mtd.h>
+#include <malloc.h>
+#include <of.h>
+
+struct mtdram_priv_data {
+       struct mtd_info mtd;
+       void *base;
+};
+
+static int ram_erase(struct mtd_info *mtd, struct erase_info *instr) {
+       memset((char *)mtd->priv + instr->addr, 0xff, instr->len);
+       instr->state = MTD_ERASE_DONE;
+       mtd_erase_callback(instr);
+       return 0;
+}
+
+static int ram_write(struct mtd_info *mtd, loff_t to, size_t len,
+                               size_t *retlen, const u_char *buf) {
+       memcpy((char*)mtd->priv + to, buf, len);
+       *retlen = len;
+       return 0;
+}
+
+static int ram_read(struct mtd_info *mtd, loff_t from, size_t len,
+               size_t *retlen, u_char *buf) {
+       memcpy(buf, mtd->priv + from, len);
+       *retlen = len;
+       return 0;
+}
+
+static int mtdram_probe(struct device_d *dev) {
+       void __iomem *base;
+       int device_id;
+       struct mtd_info *mtd;
+       struct resource *res;
+       loff_t size;
+       int ret = 0;
+
+
+       mtd = kzalloc(sizeof(struct mtd_info), GFP_KERNEL);
+       if (!mtd) {
+               ret = -ENOMEM;
+               goto nomem1;
+       }
+
+       device_id = DEVICE_ID_SINGLE;
+       if (dev->device_node) {
+               const char *alias = of_alias_get(dev->device_node);
+               dev_info (dev, "is alias for %s\n", alias);
+               if (alias)
+                       mtd->name = xstrdup(alias);
+       }
+
+       if (!mtd->name) {
+               device_id = DEVICE_ID_DYNAMIC;
+               mtd->name = "mtdram";
+       }
+
+       dev_info(dev, "MTDRAM: probe for %s (dev_name=%s)\n", dev->name, 
mtd->name);
+
+       base = dev_request_mem_region(dev, 0);
+       if (!base) {
+               ret = -EBUSY;
+               goto nobase;
+       }
+
+       res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+       size = (unsigned long) resource_size(res);
+       mtd->priv = base;
+
+       mtd->type = MTD_RAM;
+       mtd->writesize = 1;
+       mtd->writebufsize = 64;
+       mtd->flags = MTD_CAP_RAM;
+       mtd->size = size;
+
+       mtd->read = ram_read;
+       mtd->write = ram_write;
+       mtd->erase = ram_erase;
+       mtd->erasesize = 1;
+
+       mtd->parent = dev;
+
+       dev_info(dev, "add MTDRAM with size=%llx @%p\n", mtd->size, 
mtd->priv);
+       ret = add_mtd_device(mtd, mtd->name, device_id);
+       dev_info(dev, "MTDRAM: add_mtd_dev ret: %d\n", ret);
+       return ret;
+
+nobase:
+       kfree(mtd);
+nomem1:
+       return ret;
+}
+
+static __maybe_unused struct of_device_id mtdram_dt_ids[] = {
+       {
+               .compatible     = "mtd-ram",
+       }, {
+               /*  sentinel */
+       }
+};
+
+static struct driver_d mtdram_driver = {
+       .name   = "mtdram",
+       .probe  = mtdram_probe,
+       .of_compatible  = DRV_OF_COMPAT(mtdram_dt_ids),
+};
+device_platform_driver(mtdram_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Sebastian Block");
+MODULE_DESCRIPTION("MTD RAM test driver");
-- 
1.7.10.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
