Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwS0-0007sA-JK
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:25:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 May 2020 08:25:30 +0200
Message-Id: <20200508062530.23241-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200508062530.23241-1-a.fatoum@pengutronix.de>
References: <20200508062530.23241-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/5] drivers: add COMPILE_TEST prompts for some off-by-default
 options
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some Kconfig options we have are promptless and off-by-default and
instead can only be enabled by being selected from platform options.

For some of those that aren't compile testable, add a new
COMPILE_TEST-only prompt.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig              |  4 ++--
 drivers/clocksource/Kconfig | 28 ++++++++++++++--------------
 drivers/ddr/fsl/Kconfig     |  2 +-
 drivers/pci/Kconfig         |  2 +-
 lib/Kconfig                 |  2 +-
 5 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4bb0b80ebd58..460ac487cb05 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -38,8 +38,8 @@ config BLOCK_WRITE
 	bool
 
 config ELF
-	bool
-	depends on MIPS
+	bool "ELF Support" if COMPILE_TEST
+	depends on MIPS || COMPILE_TEST
 
 config FILETYPE
 	bool
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index bc2aae7ad723..92d83f7e7d2b 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -12,16 +12,16 @@ config ARM_SMP_TWD
 	depends on ARM && CPU_V7
 
 config CLOCKSOURCE_BCM283X
-	bool
-	depends on ARCH_BCM283X
+	bool "BCM283x clock source" if COMPILE_TEST
+	depends on ARCH_BCM283X || COMPILE_TEST
 
 config CLOCKSOURCE_CLPS711X
-	bool
-	depends on ARCH_CLPS711X
+	bool "CLPS711x clock source" if COMPILE_TEST
+	depends on ARCH_CLPS711X || COMPILE_TEST
 
 config CLOCKSOURCE_DIGIC
-	bool
-	depends on ARCH_DIGIC
+	bool "DIGIC clock source" if COMPILE_TEST
+	depends on ARCH_DIGIC || COMPILE_TEST
 
 config CLOCKSOURCE_DUMMY_RATE
 	int
@@ -52,20 +52,20 @@ config CLOCKSOURCE_KVX
 	depends on KVX
 
 config CLOCKSOURCE_MVEBU
-	bool
-	depends on ARCH_MVEBU
+	bool "MVEBU clock source" if COMPILE_TEST
+	depends on ARCH_MVEBU || COMPILE_TEST
 
 config CLOCKSOURCE_NOMADIK
-	bool
-	depends on ARM
+	bool "Nomadik clock source" if COMPILE_TEST
+	depends on ARM || COMPILE_TEST
 
 config CLOCKSOURCE_ORION
-	bool
-	depends on ARCH_MVEBU
+	bool "ORION clock source" if COMPILE_TEST
+	depends on ARCH_MVEBU || COMPILE_TEST
 
 config CLOCKSOURCE_UEMD
-	bool
-	depends on ARCH_UEMD
+	bool "UEMD clock source" if COMPILE_TEST
+	depends on ARCH_UEMD || COMPILE_TEST
 
 config CLOCKSOURCE_ROCKCHIP
 	bool
diff --git a/drivers/ddr/fsl/Kconfig b/drivers/ddr/fsl/Kconfig
index 9cae9028a2f5..09920bb8632e 100644
--- a/drivers/ddr/fsl/Kconfig
+++ b/drivers/ddr/fsl/Kconfig
@@ -1,5 +1,5 @@
 config DDR_FSL
-	bool
+	bool "Freescale DDR support" if COMPILE_TEST
 
 if DDR_FSL
 
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 542d734c3c8e..058546097621 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -1,5 +1,5 @@
 config HW_HAS_PCI
-	bool
+	bool "Compile in PCI core" if COMPILE_TEST
 
 if HW_HAS_PCI
 
diff --git a/lib/Kconfig b/lib/Kconfig
index e4b347375971..b4a80797009c 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -97,7 +97,7 @@ config IMAGE_SPARSE
 	bool
 
 config STMP_DEVICE
-	bool
+	bool "STMP device support" if COMPILE_TEST
 
 config FSL_QE_FIRMWARE
 	select CRC32
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
