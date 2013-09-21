Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNGwO-0003AY-U7
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 06:45:18 +0000
Received: from mail440.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6ED5F1010059
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 08:44:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 21 Sep 2013 08:46:05 +0200
Message-Id: <1379745967-4575-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379745967-4575-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130921064503.GI1137@ns203013.ovh.net>
 <1379745967-4575-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] bootcount: add simple register support
To: barebox@lists.infradead.org

use a register to store the boot count
if 2 ressources: one for magic, one for value
otherwise 16 upper bit for magic 16 lower for value

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/misc/bootcount/Kconfig    |   7 +++
 drivers/misc/bootcount/Makefile   |   1 +
 drivers/misc/bootcount/register.c | 107 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 115 insertions(+)
 create mode 100644 drivers/misc/bootcount/register.c

diff --git a/drivers/misc/bootcount/Kconfig b/drivers/misc/bootcount/Kconfig
index 77a1140..c028cf9 100644
--- a/drivers/misc/bootcount/Kconfig
+++ b/drivers/misc/bootcount/Kconfig
@@ -9,4 +9,11 @@ menuconfig BOOTCOUNT
 
 if BOOTCOUNT
 
+config BOOTCOUNT_REGISTER
+	tristate "Register"
+	help
+	  use a register to store the boot count
+	  if 2 ressources: one for magic, one for value
+	  otherwise 16 upper bit for magic 16 lower for value
+
 endif # BOOTCOUNT
diff --git a/drivers/misc/bootcount/Makefile b/drivers/misc/bootcount/Makefile
index 3c02ba1..cb6cb27 100644
--- a/drivers/misc/bootcount/Makefile
+++ b/drivers/misc/bootcount/Makefile
@@ -1 +1,2 @@
 obj-y		+= core.o
+obj-$(CONFIG_BOOTCOUNT_REGISTER) += register.o
diff --git a/drivers/misc/bootcount/register.c b/drivers/misc/bootcount/register.c
new file mode 100644
index 0000000..fc57f70
--- /dev/null
+++ b/drivers/misc/bootcount/register.c
@@ -0,0 +1,107 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 Only
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <errno.h>
+#include <bootcount.h>
+
+#define BOOTCOUNT_MAGIC	0xb001c041
+
+struct bootcount_register {
+	struct device_d *dev;
+	void __iomem *base;
+	void __iomem *magic;
+	void (*set)(struct bootcount_register *br);
+
+	struct bootcount_driver drv;
+};
+
+static void bootcount_register_set_one(struct bootcount_register *br)
+{
+	u32 val;
+
+	val = BOOTCOUNT_MAGIC | (br->drv.count & 0xffff);
+
+	writel(val, br->base);
+}
+
+static void bootcount_register_set_two(struct bootcount_register *br)
+{
+	writel(BOOTCOUNT_MAGIC, br->magic);
+	writel(br->drv.count, br->base);
+}
+
+static void bootcount_register_parse_one(struct bootcount_register *br)
+{
+	u32 val;
+
+	val = readl(br->base);
+
+	if ((val & 0xffff0000) != (BOOTCOUNT_MAGIC& 0xffff0000))
+		return;
+
+	br->drv.count = val & 0xffff;
+}
+
+static void bootcount_register_parse_two(struct bootcount_register *br)
+{
+	u32 val;
+
+	val = readl(br->magic);
+
+	if (val != BOOTCOUNT_MAGIC)
+		return;
+
+	br->drv.count = readl(br->base);
+}
+
+static void bootcount_register_drv_set(struct bootcount_driver *d)
+{
+	struct bootcount_register *br = d->priv;
+
+	br->set(br);
+}
+
+static int bootcount_register_probe(struct device_d *dev)
+{
+	struct bootcount_register *br;
+	int ret;
+
+	br = xzalloc(sizeof(*br));
+	br->base = dev_request_mem_region(dev, 0);
+	br->magic = dev_request_mem_region(dev, 1);
+	br->dev = dev;
+
+	br->drv.priv = br;
+	br->drv.set = bootcount_register_drv_set;
+	br->drv.parent = dev;
+	if (!br->magic) {
+		bootcount_register_parse_one(br);
+		br->set = bootcount_register_set_one;
+	} else {
+		bootcount_register_parse_two(br);
+		br->set = bootcount_register_set_two;
+	}
+	ret = register_bootcount(&br->drv);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct driver_d bootcount_register_driver = {
+	.name = "bootcount_register",
+	.probe = bootcount_register_probe,
+};
+
+static int bootcount_register_init(void)
+{
+	return platform_driver_register(&bootcount_register_driver);
+}
+postcore_initcall(bootcount_register_init);
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
