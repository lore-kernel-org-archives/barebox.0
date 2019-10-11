Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxlm-0007El-9P
 for barebox@lists.infradead.org; Fri, 11 Oct 2019 16:27:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Oct 2019 18:27:51 +0200
Message-Id: <20191011162753.17100-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] mfd: superio: add Fintek MFD driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Super I/O chips require a password to unlock access to the I/O ports.
Add a driver that pokes the password and registers the appropriate GPIO
and Watchdog devices as well as a regmap reflecting the Super I/O chip.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/Kconfig          |   6 ++
 drivers/mfd/Makefile         |   1 +
 drivers/mfd/fintek-superio.c | 122 +++++++++++++++++++++++++++++++++++
 3 files changed, 129 insertions(+)
 create mode 100644 drivers/mfd/fintek-superio.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index bd6f14a59f56..e2c74a575da4 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -70,4 +70,10 @@ config MFD_STPMIC1
 config MFD_SUPERIO
 	bool
 
+config FINTEK_SUPERIO
+       bool "Fintek Super I/O chip"
+       select MFD_SUPERIO
+       help
+         Select this to probe for IO-port connected Fintek Super I/O chips.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 690788eefb44..59b401dd2ea0 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
 obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
 obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
 obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
+obj-$(CONFIG_FINTEK_SUPERIO)	+= fintek-superio.o
diff --git a/drivers/mfd/fintek-superio.c b/drivers/mfd/fintek-superio.c
new file mode 100644
index 000000000000..60785bce279f
--- /dev/null
+++ b/drivers/mfd/fintek-superio.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#define pr_fmt(fmt) "fintek-superio: " fmt
+
+#include <superio.h>
+#include <init.h>
+#include <asm/io.h>
+#include <common.h>
+
+#define SIO_UNLOCK_KEY		0x87	/* Key to enable Super-I/O */
+#define SIO_LOCK_KEY		0xAA	/* Key to disable Super-I/O */
+
+#define SIO_REG_LDSEL		0x07	/* Logical device select */
+
+#define SIO_FINTEK_ID		0x1934	/* Manufacturers ID */
+
+#define SIO_F71808_ID		0x0901
+#define SIO_F71858_ID		0x0507
+#define SIO_F71862_ID		0x0601
+#define SIO_F71868_ID		0x1106
+#define SIO_F71869_ID		0x0814
+#define SIO_F71869A_ID		0x1007
+#define SIO_F71882_ID		0x0541
+#define SIO_F71889_ID		0x0723
+#define SIO_F71889A_ID		0x1005
+#define SIO_F81865_ID		0x0704
+#define SIO_F81866_ID		0x1010
+
+static void superio_enter(u16 sioaddr)
+{
+	/* according to the datasheet the key must be sent twice! */
+	outb(SIO_UNLOCK_KEY, sioaddr);
+	outb(SIO_UNLOCK_KEY, sioaddr);
+}
+
+static void superio_exit(u16 sioaddr)
+{
+	outb(SIO_LOCK_KEY, sioaddr);
+}
+
+static void fintek_superio_find(u16 sioaddr)
+{
+	struct superio_chip *chip;
+	u16 vid;
+
+	superio_enter(sioaddr);
+
+	vid = superio_inw(sioaddr, SIO_REG_MANID);
+	if (vid != SIO_FINTEK_ID) {
+		pr_debug("Not a Fintek device (port=0x%02x, vid=0x%04x)\n",
+			 sioaddr, vid);
+		return;
+	}
+
+	chip = xzalloc(sizeof(*chip));
+
+	chip->devid = superio_inw(sioaddr, SIO_REG_DEVID);
+	chip->vid = vid;
+	chip->sioaddr = sioaddr;
+	chip->enter = superio_enter;
+	chip->exit = superio_exit;
+
+	superio_chip_add(chip);
+
+	switch (chip->devid) {
+	case SIO_F71808_ID:
+		superio_func_add(chip, "f71808fg_wdt");
+		break;
+	case SIO_F71862_ID:
+		superio_func_add(chip, "f71862fg_wdt");
+		break;
+	case SIO_F71868_ID:
+		superio_func_add(chip, "f71868_wdt");
+		break;
+	case SIO_F71869_ID:
+		superio_func_add(chip, "f71869_wdt");
+		superio_func_add(chip, "gpio-f71869");
+		break;
+	case SIO_F71869A_ID:
+		superio_func_add(chip, "f71869_wdt");
+		superio_func_add(chip, "gpio-f71869a");
+		break;
+	case SIO_F71882_ID:
+		superio_func_add(chip, "f71882fg_wdt");
+		superio_func_add(chip, "gpio-f71882fg");
+		break;
+	case SIO_F71889_ID:
+		superio_func_add(chip, "f71889fg_wdt");
+		superio_func_add(chip, "gpio-f71889f");
+		break;
+	case SIO_F71889A_ID:
+		superio_func_add(chip, "f71889fg_wdt");
+		superio_func_add(chip, "gpio-f71889a");
+		break;
+	case SIO_F71858_ID:
+		/* Confirmed (by datasheet) not to have a watchdog. */
+		break;
+	case SIO_F81865_ID:
+		superio_func_add(chip, "f81865_wdt");
+		break;
+	case SIO_F81866_ID:
+		superio_func_add(chip, "f81866_wdt");
+		superio_func_add(chip, "gpio-f81866");
+		break;
+	default:
+		pr_info("Unrecognized Fintek device: 0x%04x\n", chip->devid);
+	}
+
+	superio_exit(sioaddr);
+}
+
+static int fintek_superio_detect(void)
+{
+	fintek_superio_find(0x2e);
+	fintek_superio_find(0x4e);
+
+	return 0;
+}
+coredevice_initcall(fintek_superio_detect);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
