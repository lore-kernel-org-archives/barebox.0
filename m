Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZV-0004xX-Oz
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:16 +0200
Message-Id: <1460702958-4012-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
References: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] include: Move dm9000 eth platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9261ek/init.c                     |  2 +-
 arch/arm/boards/friendlyarm-mini2440/mini2440.c          |  2 +-
 arch/arm/boards/friendlyarm-mini6410/mini6410.c          |  2 +-
 arch/arm/boards/friendlyarm-tiny210/tiny210.c            |  1 -
 arch/arm/boards/friendlyarm-tiny6410/development-board.c |  2 +-
 arch/arm/boards/pm9261/init.c                            |  2 +-
 arch/arm/boards/scb9328/scb9328.c                        |  2 +-
 drivers/net/dm9k.c                                       |  2 +-
 include/dm9000.h                                         | 10 ----------
 include/platform_data/eth-dm9000.h                       | 10 ++++++++++
 10 files changed, 17 insertions(+), 18 deletions(-)
 delete mode 100644 include/dm9000.h
 create mode 100644 include/platform_data/eth-dm9000.h

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 6cb1701..b9e4914 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -34,7 +34,7 @@
 #include <mach/io.h>
 #include <mach/iomux.h>
 #include <mach/at91sam9_smc.h>
-#include <dm9000.h>
+#include <platform_data/eth-dm9000.h>
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <led.h>
diff --git a/arch/arm/boards/friendlyarm-mini2440/mini2440.c b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
index b59c836..7f59cb9 100644
--- a/arch/arm/boards/friendlyarm-mini2440/mini2440.c
+++ b/arch/arm/boards/friendlyarm-mini2440/mini2440.c
@@ -21,7 +21,7 @@
 #include <init.h>
 #include <generated/mach-types.h>
 #include <partition.h>
-#include <dm9000.h>
+#include <platform_data/eth-dm9000.h>
 #include <nand.h>
 #include <mci.h>
 #include <fb.h>
diff --git a/arch/arm/boards/friendlyarm-mini6410/mini6410.c b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
index a372db5..a85b1bd 100644
--- a/arch/arm/boards/friendlyarm-mini6410/mini6410.c
+++ b/arch/arm/boards/friendlyarm-mini6410/mini6410.c
@@ -14,7 +14,7 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-#include <dm9000.h>
+#include <platform_data/eth-dm9000.h>
 #include <gpio.h>
 #include <generated/mach-types.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
index d84b312..b40dc98 100644
--- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
+++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
@@ -29,7 +29,6 @@
 #include <init.h>
 #include <linux/sizes.h>
 #include <generated/mach-types.h>
-#include <dm9000.h>
 #include <gpio.h>
 #include <led.h>
 #include <io.h>
diff --git a/arch/arm/boards/friendlyarm-tiny6410/development-board.c b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
index 773a423..5dd05e4 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/development-board.c
+++ b/arch/arm/boards/friendlyarm-tiny6410/development-board.c
@@ -23,7 +23,7 @@
 #include <driver.h>
 #include <init.h>
 #include <gpio.h>
-#include <dm9000.h>
+#include <platform_data/eth-dm9000.h>
 #include <mach/devices-s3c64xx.h>
 #include <mach/s3c-generic.h>
 #include <mach/iomux.h>
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 63f4f19..177355b 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -35,7 +35,7 @@
 #include <mach/iomux.h>
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
-#include <dm9000.h>
+#include <platform_data/eth-dm9000.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 3af1404..fda3b14 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -26,7 +26,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <dm9000.h>
+#include <platform_data/eth-dm9000.h>
 #include <led.h>
 #include <mach/iomux-mx1.h>
 #include <mach/devices-imx1.h>
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index ad402e3..acc0abb 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -29,7 +29,7 @@
 #include <net.h>
 #include <io.h>
 #include <xfuncs.h>
-#include <dm9000.h>
+#include <platform_data/eth-dm9000.h>
 #include <errno.h>
 #include <linux/phy.h>
 
diff --git a/include/dm9000.h b/include/dm9000.h
deleted file mode 100644
index a9a4635..0000000
--- a/include/dm9000.h
+++ /dev/null
@@ -1,10 +0,0 @@
-
-#ifndef __DM9000_H__
-#define __DM9000_H__
-
-struct dm9000_platform_data {
-	int srom;
-};
-
-#endif /* __DM9000_H__ */
-
diff --git a/include/platform_data/eth-dm9000.h b/include/platform_data/eth-dm9000.h
new file mode 100644
index 0000000..a9a4635
--- /dev/null
+++ b/include/platform_data/eth-dm9000.h
@@ -0,0 +1,10 @@
+
+#ifndef __DM9000_H__
+#define __DM9000_H__
+
+struct dm9000_platform_data {
+	int srom;
+};
+
+#endif /* __DM9000_H__ */
+
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
