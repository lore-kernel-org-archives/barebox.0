Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltV-0001Tv-B8
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:46 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:51 +0100
Message-Id: <1423478871-15276-11-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 10/10] ARM: socfpga: update defconfig
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Update defconfig by running

	make socfpga_defconfig && make savedefconfig

and enable firmware support.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/socfpga_defconfig | 69 +++++++++++++++++++-------------------
 1 file changed, 34 insertions(+), 35 deletions(-)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index ca54a1a491b9..a6755fcc2d0a 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -1,9 +1,7 @@
 CONFIG_ARCH_SOCFPGA=y
-CONFIG_ARCH_SOCFPGA_FPGA=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
@@ -12,59 +10,60 @@ CONFIG_MALLOC_SIZE=0x0
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
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
