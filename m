Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxlm-0007Em-9H
 for barebox@lists.infradead.org; Fri, 11 Oct 2019 16:27:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Oct 2019 18:27:53 +0200
Message-Id: <20191011162753.17100-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191011162753.17100-1-a.fatoum@pengutronix.de>
References: <20191011162753.17100-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] mfd: superio: add base SMSC MFD driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>

From: Ahmad Fatoum <ahmad@a3f.at>

The SMSC FDC37C93xAPM is the Super I/O chip on the Dell Latitude 7490.
This adds device detection for it and its siblings, so device drivers
can be written against it or init scripts can use its regmap interface.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/mfd/Kconfig        |   6 ++
 drivers/mfd/Makefile       |   1 +
 drivers/mfd/smsc-superio.c | 115 +++++++++++++++++++++++++++++++++++++
 3 files changed, 122 insertions(+)
 create mode 100644 drivers/mfd/smsc-superio.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index e2c74a575da4..f4cc71ef0ec8 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -76,4 +76,10 @@ config FINTEK_SUPERIO
        help
          Select this to probe for IO-port connected Fintek Super I/O chips.
 
+config SMSC_SUPERIO
+       bool "SMSC Super I/O chip"
+       select MFD_SUPERIO
+       help
+         Select this to probe for IO-port connected SMSC Super I/O chips.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 59b401dd2ea0..0c24493e3d86 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -14,3 +14,4 @@ obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
 obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
 obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
 obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
+obj-$(CONFIG_SMSC_SUPERIO)	+= smsc-superio.o
diff --git a/drivers/mfd/smsc-superio.c b/drivers/mfd/smsc-superio.c
new file mode 100644
index 000000000000..349c878cefe0
--- /dev/null
+++ b/drivers/mfd/smsc-superio.c
@@ -0,0 +1,115 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#define pr_fmt(fmt) "smsc-superio: " fmt
+
+#include <superio.h>
+#include <init.h>
+#include <asm/io.h>
+#include <common.h>
+
+#define SIO_UNLOCK_KEY		0x55	/* Key to enable Super-I/O */
+#define SIO_LOCK_KEY		0xAA	/* Key to disable Super-I/O */
+
+#define SMSC_ID			0x10b8  /* Standard Microsystems Corp PCI ID */
+
+static void superio_enter(u16 sioaddr)
+{
+	outb(SIO_UNLOCK_KEY, sioaddr);
+	mdelay(1);
+	outb(SIO_UNLOCK_KEY, sioaddr);
+}
+
+static void superio_exit(u16 sioaddr)
+{
+	outb(SIO_LOCK_KEY, sioaddr);
+}
+
+static void smsc_superio_find(u16 sioaddr, u16 id_reg)
+{
+	struct superio_chip *chip;
+	u16 devid;
+
+	superio_enter(sioaddr);
+
+	devid = superio_inw(sioaddr, id_reg);
+	switch(devid >> 8) {
+	case 0x02:
+	case 0x03:
+	case 0x07:
+	case 0x09:
+	case 0x0a:
+	case 0x0b:
+	case 0x0e:
+	case 0x14:
+	case 0x30:
+	case 0x40:
+	case 0x42:
+	case 0x43:
+	case 0x44:
+	case 0x46:
+	case 0x47:
+	case 0x4c:
+	case 0x4d:
+	case 0x51:
+	case 0x52:
+	case 0x54:
+	case 0x56:
+	case 0x57:
+	case 0x59:
+	case 0x5d:
+	case 0x5f:
+	case 0x60:
+	case 0x62:
+	case 0x67:
+	case 0x6b:
+	case 0x6e:
+	case 0x6f:
+	case 0x74:
+	case 0x76:
+	case 0x77:
+	case 0x78:
+	case 0x79:
+	case 0x7a:
+	case 0x7c:
+	case 0x7d:
+	case 0x7f:
+	case 0x81:
+	case 0x83:
+	case 0x85:
+	case 0x86:
+	case 0x89:
+	case 0x8c:
+	case 0x90:
+		break;
+	default:
+		pr_debug("Not a SMSC device (port=0x%02x, devid=0x%04x)\n",
+			 sioaddr, devid);
+		return;
+	}
+
+	chip = xzalloc(sizeof(*chip));
+
+	chip->devid = devid;
+	chip->vid = SMSC_ID;
+	chip->sioaddr = sioaddr;
+	chip->enter = superio_enter;
+	chip->exit = superio_exit;
+
+	superio_chip_add(chip);
+
+	superio_exit(sioaddr);
+}
+
+static int smsc_superio_detect(void)
+{
+	u16 ports[] = { 0x2e, 0x4e, 0x162e, 0x164e, 0x3f0, 0x370 };
+
+	for (int i = 0; i < ARRAY_SIZE(ports); i++)
+		smsc_superio_find(ports[i], SIO_REG_DEVID);
+
+	return 0;
+}
+coredevice_initcall(smsc_superio_detect);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
