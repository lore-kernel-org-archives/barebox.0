Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4wmd-00012e-Ef
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 17:03:11 +0000
Received: from mail401.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 86699DC1A9B
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 18:13:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Feb 2013 18:01:59 +0100
Message-Id: <1360602120-11241-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ahci: add generic driver
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/ata/Kconfig        |    4 ++++
 drivers/ata/Makefile       |    2 ++
 drivers/ata/ahci-generic.c |   47 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 drivers/ata/ahci-generic.c

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index ff6528a..41dc811 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -37,6 +37,10 @@ config DISK_AHCI
 	select DISK_ATA
 	select DISK_DRIVE
 
+config DISK_AHCI_GENERIC
+	depends on DISK_AHCI
+	bool "AHCI generic support"
+
 config DISK_AHCI_IMX
 	depends on DISK_AHCI
 	bool "i.MX AHCI support"
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index c444c4d..802bd61 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -4,8 +4,10 @@ obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
 obj-$(CONFIG_DISK_IDE_SFF) += ide-sff.o
 obj-$(CONFIG_DISK_ATA) += disk_ata_drive.o
 obj-$(CONFIG_DISK_AHCI) += ahci.o
+obj-$(CONFIG_DISK_AHCI_GENERIC) += ahci-generic.o
 obj-$(CONFIG_DISK_AHCI_IMX) += sata-imx.o
 
+
 # interface types
 
 obj-$(CONFIG_DISK_INTF_PLATFORM_IDE) += intf_platform_ide.o
diff --git a/drivers/ata/ahci-generic.c b/drivers/ata/ahci-generic.c
new file mode 100644
index 0000000..4077627
--- /dev/null
+++ b/drivers/ata/ahci-generic.c
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#include <common.h>
+#include <ata_drive.h>
+#include <io.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include "ahci.h"
+
+static int ahci_probe(struct device_d *dev)
+{
+	struct ahci_device *ahci;
+	int ret;
+
+	ahci = xzalloc(sizeof(*ahci));
+
+	ahci->mmio_base = dev_request_mem_region(dev, 0);
+
+	ahci->dev = dev;
+	dev->priv = ahci;
+	ret = ahci_add_host(ahci);
+	if (ret)
+		goto err_free;
+
+	return 0;
+
+err_free:
+	free(ahci);
+
+	return ret;
+}
+
+static struct driver_d ahci_driver = {
+	.name	= "ahci",
+	.probe	= ahci_probe,
+};
+
+static int ahci_init(void)
+{
+	return platform_driver_register(&ahci_driver);
+}
+device_initcall(ahci_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
