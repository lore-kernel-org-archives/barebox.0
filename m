Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNGwO-0003AZ-U6
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 06:45:19 +0000
Received: from mail440.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 8BD30101005A
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 08:44:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 21 Sep 2013 08:46:06 +0200
Message-Id: <1379745967-4575-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] bootcount: add somfy bootcount support
To: barebox@lists.infradead.org

we support different boot mode
 - normal
 - normal_forced
 - update
 - rescue
 - usb
 - network
 - test

each of them need to be checked this will allow to decide what is the next
boot mode during the boot sequence

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/misc/bootcount/Kconfig  |   3 +
 drivers/misc/bootcount/Makefile |   1 +
 drivers/misc/bootcount/somfy.c  | 128 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 132 insertions(+)
 create mode 100644 drivers/misc/bootcount/somfy.c

diff --git a/drivers/misc/bootcount/Kconfig b/drivers/misc/bootcount/Kconfig
index c028cf9..622e561 100644
--- a/drivers/misc/bootcount/Kconfig
+++ b/drivers/misc/bootcount/Kconfig
@@ -16,4 +16,7 @@ config BOOTCOUNT_REGISTER
 	  if 2 ressources: one for magic, one for value
 	  otherwise 16 upper bit for magic 16 lower for value
 
+config SOMFY_BOOTCOUNT
+	tristate "Somfy Boot Count"
+
 endif # BOOTCOUNT
diff --git a/drivers/misc/bootcount/Makefile b/drivers/misc/bootcount/Makefile
index cb6cb27..8eb0c23 100644
--- a/drivers/misc/bootcount/Makefile
+++ b/drivers/misc/bootcount/Makefile
@@ -1,2 +1,3 @@
 obj-y		+= core.o
 obj-$(CONFIG_BOOTCOUNT_REGISTER) += register.o
+obj-$(CONFIG_SOMFY_BOOTCOUNT)	+= somfy.o
diff --git a/drivers/misc/bootcount/somfy.c b/drivers/misc/bootcount/somfy.c
new file mode 100644
index 0000000..08b3c0a
--- /dev/null
+++ b/drivers/misc/bootcount/somfy.c
@@ -0,0 +1,128 @@
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
+#define SOMFY_BOOTCOUNT_UPDATE	(0x5550) << 16
+#define SOMFY_BOOTCOUNT_RESCUE	(0x5245) << 16
+#define SOMFY_BOOTCOUNT_USB	(0x5542) << 16
+#define SOMFY_BOOTCOUNT_NETWORK	(0x4E54) << 16
+#define SOMFY_BOOTCOUNT_TEST	(0x5445) << 16
+#define SOMFY_BOOTCOUNT_NORMAL	(0xb001) << 16
+#define SOMFY_BOOTCOUNT_NORMAL_FORCED	(0xb002) << 16
+
+static u32 somfy_boot_mode_mask[] = {
+	SOMFY_BOOTCOUNT_NORMAL,
+	SOMFY_BOOTCOUNT_NORMAL_FORCED,
+	SOMFY_BOOTCOUNT_UPDATE,
+	SOMFY_BOOTCOUNT_RESCUE,
+	SOMFY_BOOTCOUNT_USB,
+	SOMFY_BOOTCOUNT_NETWORK,
+	SOMFY_BOOTCOUNT_TEST,
+};
+
+static const char *somfy_boot_modes[] = {
+	"normal",
+	"normal_forced",
+	"update",
+	"rescue",
+	"usb",
+	"network",
+	"test",
+};
+
+struct somfy_bootcount {
+	struct device_d *dev;
+	int mode;
+	void __iomem *base;
+	struct bootcount_driver drv;
+};
+
+static void somfy_bootcount_set(struct somfy_bootcount *sb)
+{
+	u32 val;
+
+	val = somfy_boot_mode_mask[sb->mode] | (sb->drv.count & 0xffff);
+
+	writel(val, sb->base);
+}
+
+static int somfy_bootcount_mode_set(struct param_d *p, void *priv)
+{
+	struct somfy_bootcount *sb = priv;
+
+	sb->drv.count = 0;
+	somfy_bootcount_set(sb);
+
+	return 0;
+}
+
+static void somfy_bootcount_parse(struct somfy_bootcount *sb)
+{
+	u32 val;
+	int i;
+
+	val = readl(sb->base);
+
+	for (i = 0; i < ARRAY_SIZE(somfy_boot_mode_mask); i++) {
+		u32 mask = somfy_boot_mode_mask[i];
+
+		if ((val & 0xffff0000) == mask)
+			goto found;
+	}
+
+	return;
+
+found:
+	sb->mode = i;
+	sb->drv.count = val & 0xffff;
+}
+
+static void somfy_bootcount_drv_set(struct bootcount_driver *d)
+{
+	struct somfy_bootcount *sb = d->priv;
+
+	somfy_bootcount_set(sb);
+}
+
+static int somfy_bootcount_probe(struct device_d *dev)
+{
+	struct somfy_bootcount *sb;
+	int ret;
+
+	sb = xzalloc(sizeof(*sb));
+	sb->base = dev_request_mem_region(dev, 0);
+	sb->dev = dev;
+
+	sb->drv.priv = sb;
+	sb->drv.set = somfy_bootcount_drv_set;
+	sb->drv.parent = dev;
+	somfy_bootcount_parse(sb);
+	ret = register_bootcount(&sb->drv);
+	if (ret)
+		return ret;
+
+	dev_add_param_enum(sb->drv.dev, "mode", somfy_bootcount_mode_set,
+		NULL, &sb->mode, somfy_boot_modes, ARRAY_SIZE(somfy_boot_modes), sb);
+
+	return 0;
+}
+
+static struct driver_d somfy_bootcount_driver = {
+	.name = "somfy_bootcount",
+	.probe = somfy_bootcount_probe,
+};
+
+static int somfy_bootcount_init(void)
+{
+	return platform_driver_register(&somfy_bootcount_driver);
+}
+postcore_initcall(somfy_bootcount_init);
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
