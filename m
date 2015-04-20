Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7V0-00073D-S7
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 08:56:17 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Yk7Ue-00089K-T0
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 10:55:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Apr 2015 10:55:51 +0200
Message-Id: <1429520152-27399-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: socfpga: add default ARCH_TEXT_BASE
To: barebox@lists.infradead.org

As SoCFPGA is multi-image enabled there is no real reason
to bother the user with asking for the text base. Fixes a
bunch of randcfg failures.

Regenerate defconfig to drop the explicit config there, which
unfortunately introduces quite a bit of churn.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/socfpga_defconfig | 70 ++++++++++++++++++--------------------
 arch/arm/mach-socfpga/Kconfig      |  4 +++
 2 files changed, 38 insertions(+), 36 deletions(-)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index ca54a1a491b9..ec369ae42efb 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -1,70 +1,68 @@
 CONFIG_ARCH_SOCFPGA=y
-CONFIG_ARCH_SOCFPGA_FPGA=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 90b3533b1ffb..73b26efd2031 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -1,5 +1,9 @@
 if ARCH_SOCFPGA
 
+config ARCH_TEXT_BASE
+	hex
+	default 0x0
+
 config ARCH_SOCFPGA_XLOAD
 	bool
 	prompt "Build preloader image"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
