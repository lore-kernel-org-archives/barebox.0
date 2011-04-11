Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QQ-KA
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:40:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:51 +0200
Message-Id: <1302532791-20664-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] ARM beagle board: add xload defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/omap3530_beagle_xload_defconfig |   38 ++++++++++++++++++++++
 1 files changed, 38 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/configs/omap3530_beagle_xload_defconfig

diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
new file mode 100644
index 0000000..58a2309
--- /dev/null
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -0,0 +1,38 @@
+CONFIG_ARCH_OMAP=y
+# CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_BEAGLE=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+# CONFIG_ARM_EXCEPTIONS is not set
+CONFIG_TEXT_BASE=0x40200000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x87BF7F10
+CONFIG_MALLOC_BASE=0x87BFFF10
+CONFIG_MALLOC_DUMMY=y
+CONFIG_PROMPT="X-load Beagle>"
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_CONSOLE_FULL is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+# CONFIG_NAND_WRITE is not set
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+# CONFIG_NAND_INFO is not set
+# CONFIG_NAND_BBT is not set
+# CONFIG_NAND_READ_OOB is not set
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
