Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003G2-UT
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:15 +0200
Message-Id: <1286796505-16049-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/17] Move mfd drivers to drivers/mfd
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig                 |    1 +
 drivers/Makefile                |    1 +
 drivers/i2c/Kconfig             |   16 ----------------
 drivers/i2c/Makefile            |    6 ------
 drivers/mfd/Kconfig             |   28 ++++++++++++++++++++++++++++
 drivers/mfd/Makefile            |    6 ++++++
 drivers/{i2c => mfd}/lp3972.c   |    0
 drivers/{spi => mfd}/mc13783.c  |    0
 drivers/{i2c => mfd}/mc13892.c  |    0
 drivers/{i2c => mfd}/mc34704.c  |    0
 drivers/{i2c => mfd}/mc9sdz60.c |    0
 drivers/{i2c => mfd}/twl4030.c  |    0
 drivers/spi/Kconfig             |    4 ----
 drivers/spi/Makefile            |    2 --
 14 files changed, 36 insertions(+), 28 deletions(-)
 create mode 100644 drivers/mfd/Kconfig
 create mode 100644 drivers/mfd/Makefile
 rename drivers/{i2c => mfd}/lp3972.c (100%)
 rename drivers/{spi => mfd}/mc13783.c (100%)
 rename drivers/{i2c => mfd}/mc13892.c (100%)
 rename drivers/{i2c => mfd}/mc34704.c (100%)
 rename drivers/{i2c => mfd}/mc9sdz60.c (100%)
 rename drivers/{i2c => mfd}/twl4030.c (100%)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 13235f3..d94017b 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -11,5 +11,6 @@ source "drivers/usb/Kconfig"
 source "drivers/video/Kconfig"
 source "drivers/mci/Kconfig"
 source "drivers/clk/Kconfig"
+source "drivers/mfd/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 71d34f9..242a564 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_I2C) += i2c/
 obj-$(CONFIG_MCI) += mci/
 obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
+obj-y	+= mfd/
diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index 9ce1655..c2af818 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -5,20 +5,4 @@ if I2C
 
 source drivers/i2c/busses/Kconfig
 
-config I2C_MC13892
-	bool "MC13892 a.k.a. PMIC driver"
-
-config I2C_MC34704
-	bool "MC34704 PMIC driver"
-
-config I2C_MC9SDZ60
-	bool "MC9SDZ60 driver"
-
-config I2C_LP3972
-	bool "LP3972 driver"
-
-config I2C_TWL4030
-	bool "TWL4030 driver"
-	select GPIO
-
 endif
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 0584b55..42e22c0 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1,7 +1 @@
 obj-$(CONFIG_I2C) += i2c.o busses/
-
-obj-$(CONFIG_I2C_MC13892) += mc13892.o
-obj-$(CONFIG_I2C_MC34704) += mc34704.o
-obj-$(CONFIG_I2C_MC9SDZ60) += mc9sdz60.o
-obj-$(CONFIG_I2C_LP3972) += lp3972.o
-obj-$(CONFIG_I2C_TWL4030) += twl4030.o
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
new file mode 100644
index 0000000..7c27418
--- /dev/null
+++ b/drivers/mfd/Kconfig
@@ -0,0 +1,28 @@
+menu MFD
+
+config I2C_MC13892
+	depends on I2C
+	bool "MC13892 a.k.a. PMIC driver"
+
+config I2C_MC34704
+	depends on I2C
+	bool "MC34704 PMIC driver"
+
+config I2C_MC9SDZ60
+	depends on I2C
+	bool "MC9SDZ60 driver"
+
+config I2C_LP3972
+	depends on I2C
+	bool "LP3972 driver"
+
+config I2C_TWL4030
+	depends on I2C
+	bool "TWL4030 driver"
+	select GPIO
+
+config DRIVER_SPI_MC13783
+	depends on SPI
+	bool "MC13783 a.k.a. PMIC driver"
+
+endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
new file mode 100644
index 0000000..d411f23
--- /dev/null
+++ b/drivers/mfd/Makefile
@@ -0,0 +1,6 @@
+obj-$(CONFIG_I2C_MC13892) += mc13892.o
+obj-$(CONFIG_I2C_MC34704) += mc34704.o
+obj-$(CONFIG_I2C_MC9SDZ60) += mc9sdz60.o
+obj-$(CONFIG_I2C_LP3972) += lp3972.o
+obj-$(CONFIG_I2C_TWL4030) += twl4030.o
+obj-$(CONFIG_DRIVER_SPI_MC13783) += mc13783.o
diff --git a/drivers/i2c/lp3972.c b/drivers/mfd/lp3972.c
similarity index 100%
rename from drivers/i2c/lp3972.c
rename to drivers/mfd/lp3972.c
diff --git a/drivers/spi/mc13783.c b/drivers/mfd/mc13783.c
similarity index 100%
rename from drivers/spi/mc13783.c
rename to drivers/mfd/mc13783.c
diff --git a/drivers/i2c/mc13892.c b/drivers/mfd/mc13892.c
similarity index 100%
rename from drivers/i2c/mc13892.c
rename to drivers/mfd/mc13892.c
diff --git a/drivers/i2c/mc34704.c b/drivers/mfd/mc34704.c
similarity index 100%
rename from drivers/i2c/mc34704.c
rename to drivers/mfd/mc34704.c
diff --git a/drivers/i2c/mc9sdz60.c b/drivers/mfd/mc9sdz60.c
similarity index 100%
rename from drivers/i2c/mc9sdz60.c
rename to drivers/mfd/mc9sdz60.c
diff --git a/drivers/i2c/twl4030.c b/drivers/mfd/twl4030.c
similarity index 100%
rename from drivers/i2c/twl4030.c
rename to drivers/mfd/twl4030.c
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 2b8d2f4..a88e179 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -19,8 +19,4 @@ config DRIVER_SPI_IMX_2_3
 	depends on ARCH_IMX51
 	default y
 
-config DRIVER_SPI_MC13783
-	bool "MC13783 a.k.a. PMIC driver"
-	depends on SPI
-
 endmenu
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 81f2c6b..b2b2f67 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -1,4 +1,2 @@
 obj-$(CONFIG_SPI) += spi.o
 obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
-
-obj-$(CONFIG_DRIVER_SPI_MC13783) += mc13783.o
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
