Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVKT-0007Gl-9c
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 14:08:35 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 781AD1C0011
 for <barebox@lists.infradead.org>; Wed,  4 Dec 2019 14:07:27 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  4 Dec 2019 15:07:21 +0100
Message-Id: <20191204140721.20299-3-ahmad@a3f.at>
In-Reply-To: <20191204140721.20299-1-ahmad@a3f.at>
References: <20191204140721.20299-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] misc: add ACPI test driver
To: barebox@lists.infradead.org

We have a bus driver for ACPI, but no drivers yet. Add a simple (rather
useless) driver that exercises the API, which future drivers can be
based on. As soon as we have proper ACPI drivers, this driver could be
removed again.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/misc/Kconfig     |  6 ++++
 drivers/misc/Makefile    |  1 +
 drivers/misc/acpi-test.c | 61 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 68 insertions(+)
 create mode 100644 drivers/misc/acpi-test.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 0f736f8bded3..b76198b10af5 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -35,4 +35,10 @@ config UBOOTVAR
 	  While it can be used standalone, it is best when coupled
 	  with corresponding filesystem driver.
 
+config ACPI_TEST
+	bool "ACPI Test driver"
+	depends on ACPI
+	help
+	  This is a simple Test driver to test the ACPI bus.
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index bc1c01ea4d67..4d92465a1e5e 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_DEV_MEM)		+= mem.o
 obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
+obj-$(CONFIG_ACPI_TEST)		+= acpi-test.o
diff --git a/drivers/misc/acpi-test.c b/drivers/misc/acpi-test.c
new file mode 100644
index 000000000000..970b435a0eec
--- /dev/null
+++ b/drivers/misc/acpi-test.c
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Ahmad Fatoum
+ */
+
+#include <common.h>
+#include <init.h>
+#include <acpi.h>
+
+static const char *profiles[] = {
+	"Unspecified",
+	"Desktop",
+	"Mobile",
+	"Workstation",
+	"Enterprise Server",
+	"SOHO Server",
+	"Applicance PC",
+	"Performance Server",
+	"Tablet",
+};
+
+static int acpi_test_probe(struct device_d *dev)
+{
+	const char *profile = "reserved";
+	u8 *sdt;
+	u8 profileno;
+
+	dev_dbg(dev, "driver initializing...\n");
+
+	sdt = (u8 __force *)dev_request_mem_region_by_name(dev, "SDT");
+	if (IS_ERR(sdt)) {
+		dev_err(dev, "no SDT resource available: %s\n", strerrorp(sdt));
+		return PTR_ERR(sdt);
+	}
+
+	dev_dbg(dev, "SDT is at 0x%p\n", sdt);
+
+	profileno = sdt[45];
+
+	if (profileno < ARRAY_SIZE(profiles))
+		profile = profiles[profileno];
+
+	dev_info(dev, "PM profile is for '%s'\n", profile);
+
+	return 0;
+}
+
+static void acpi_test_remove(struct device_d *dev)
+{
+	dev_info(dev, "FADT driver removed\n");
+}
+
+static struct acpi_driver acpi_test_driver = {
+	.signature = "FACP",
+	.driver = {
+		.name = "acpi-test",
+		.probe = acpi_test_probe,
+		.remove = acpi_test_remove,
+	}
+};
+device_acpi_driver(acpi_test_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
