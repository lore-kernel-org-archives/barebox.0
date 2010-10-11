Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003G4-W3
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:16 +0200
Message-Id: <1286796505-16049-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/17] move include files for mfd drivers to include/mfd
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    4 ++--
 drivers/mfd/mc13892.c                             |    2 +-
 drivers/mfd/mc34704.c                             |    2 +-
 drivers/mfd/mc9sdz60.c                            |    2 +-
 drivers/mfd/twl4030.c                             |    2 +-
 drivers/usb/host/ehci-omap.c                      |    2 +-
 drivers/usb/otg/twl4030.c                         |    2 +-
 include/{i2c => mfd}/lp3972.h                     |    0
 include/{i2c => mfd}/mc13892.h                    |    8 ++++++++
 include/{i2c => mfd}/mc34704.h                    |    0
 include/{i2c => mfd}/mc9sdz60.h                   |    0
 include/{i2c => mfd}/twl4030.h                    |    0
 14 files changed, 18 insertions(+), 10 deletions(-)
 rename include/{i2c => mfd}/lp3972.h (100%)
 rename include/{i2c => mfd}/mc13892.h (95%)
 rename include/{i2c => mfd}/mc34704.h (100%)
 rename include/{i2c => mfd}/mc9sdz60.h (100%)
 rename include/{i2c => mfd}/twl4030.h (100%)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 4d1797b..cbc7500 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -44,7 +44,7 @@
 #include <ns16550.h>
 #include <asm/mmu.h>
 #include <i2c/i2c.h>
-#include <i2c/lp3972.h>
+#include <mfd/lp3972.h>
 #include <mach/iomux-mx27.h>
 
 static struct device_d cfi_dev = {
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 70de7958..25945f1 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -39,7 +39,7 @@
 #include <mach/generic.h>
 #include <linux/err.h>
 #include <i2c/i2c.h>
-#include <i2c/mc34704.h>
+#include <mfd/mc34704.h>
 
 extern unsigned long _stext;
 extern void exception_vectors(void);
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 71aaa92..9b8d718 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -50,8 +50,8 @@
 #include <mach/generic.h>
 
 #include <i2c/i2c.h>
-#include <i2c/mc13892.h>
-#include <i2c/mc9sdz60.h>
+#include <mfd/mc13892.h>
+#include <mfd/mc9sdz60.h>
 
 
 /* Board rev for the PDK 3stack */
diff --git a/drivers/mfd/mc13892.c b/drivers/mfd/mc13892.c
index 67d4232..240a7a9 100644
--- a/drivers/mfd/mc13892.c
+++ b/drivers/mfd/mc13892.c
@@ -26,7 +26,7 @@
 #include <errno.h>
 
 #include <i2c/i2c.h>
-#include <i2c/mc13892.h>
+#include <mfd/mc13892.h>
 
 #define DRIVERNAME		"mc13892"
 
diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
index 51a8737..a2171b3 100644
--- a/drivers/mfd/mc34704.c
+++ b/drivers/mfd/mc34704.c
@@ -27,7 +27,7 @@
 #include <errno.h>
 
 #include <i2c/i2c.h>
-#include <i2c/mc34704.h>
+#include <mfd/mc34704.h>
 
 #define DRIVERNAME		"mc34704"
 
diff --git a/drivers/mfd/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
index 3580af8..db208ec 100644
--- a/drivers/mfd/mc9sdz60.c
+++ b/drivers/mfd/mc9sdz60.c
@@ -26,7 +26,7 @@
 #include <errno.h>
 
 #include <i2c/i2c.h>
-#include <i2c/mc9sdz60.h>
+#include <mfd/mc9sdz60.h>
 
 #define DRIVERNAME		"mc9sdz60"
 
diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 5305ec6..81bf48b 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -12,7 +12,7 @@
 #include <errno.h>
 
 #include <i2c/i2c.h>
-#include <i2c/twl4030.h>
+#include <mfd/twl4030.h>
 
 #define DRIVERNAME		"twl4030"
 
diff --git a/drivers/usb/host/ehci-omap.c b/drivers/usb/host/ehci-omap.c
index 0c30c52..05f1628 100644
--- a/drivers/usb/host/ehci-omap.c
+++ b/drivers/usb/host/ehci-omap.c
@@ -11,7 +11,7 @@
 
 /*-------------------------------------------------------------------------*/
 
-#include <i2c/twl4030.h>
+#include <mfd/twl4030.h>
 #include <usb/twl4030.h>
 #include <mach/ehci.h>
 #include <common.h>
diff --git a/drivers/usb/otg/twl4030.c b/drivers/usb/otg/twl4030.c
index 72edf25..4077169 100644
--- a/drivers/usb/otg/twl4030.c
+++ b/drivers/usb/otg/twl4030.c
@@ -37,7 +37,7 @@
  * MA 02111-1307 USA
  */
 
-#include <i2c/twl4030.h>
+#include <mfd/twl4030.h>
 #include <usb/twl4030.h>
 #include <clock.h>
 
diff --git a/include/i2c/lp3972.h b/include/mfd/lp3972.h
similarity index 100%
rename from include/i2c/lp3972.h
rename to include/mfd/lp3972.h
diff --git a/include/i2c/mc13892.h b/include/mfd/mc13892.h
similarity index 95%
rename from include/i2c/mc13892.h
rename to include/mfd/mc13892.h
index 112d05b..11ae878 100644
--- a/include/i2c/mc13892.h
+++ b/include/mfd/mc13892.h
@@ -79,9 +79,17 @@ enum mc13892_reg {
 	MC13892_REG_TEST4		= 0x3f,
 };
 
+enum mc13892_mode {
+	MC13892_MODE_I2C,
+	MC13892_MODE_SPI,
+};
+
 struct mc13892 {
 	struct cdev		cdev;
 	struct i2c_client	*client;
+	struct spi_device	*spi;
+	enum mc13892_mode	mode;
+	
 };
 
 extern struct mc13892 *mc13892_get(void);
diff --git a/include/i2c/mc34704.h b/include/mfd/mc34704.h
similarity index 100%
rename from include/i2c/mc34704.h
rename to include/mfd/mc34704.h
diff --git a/include/i2c/mc9sdz60.h b/include/mfd/mc9sdz60.h
similarity index 100%
rename from include/i2c/mc9sdz60.h
rename to include/mfd/mc9sdz60.h
diff --git a/include/i2c/twl4030.h b/include/mfd/twl4030.h
similarity index 100%
rename from include/i2c/twl4030.h
rename to include/mfd/twl4030.h
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
