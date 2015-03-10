Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVQJQ-0008P6-G7
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 19:59:34 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YVQJ2-0004Gt-UP
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 20:59:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Mar 2015 20:59:06 +0100
Message-Id: <1426017548-30324-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
References: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: zynq: zedboard: don't select serial
To: barebox@lists.infradead.org

Selecting the serial driver breaks the build with CONFIG_SERIAL_NONE.
Move it to the defconfig of the board instead, like we do on other
boards.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/zedboard_defconfig | 36 +++++++++++++++++-------------------
 arch/arm/mach-zynq/Kconfig          |  1 -
 2 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index 73684183362a..9ce7c5ab12d3 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -1,6 +1,5 @@
 CONFIG_ARCH_ZYNQ=y
 CONFIG_AEABI=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_UNWIND=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
@@ -8,7 +7,6 @@ CONFIG_STACK_SIZE=0xf000
 CONFIG_MALLOC_SIZE=0x8000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -17,32 +15,32 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/avnet-zedboard/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_LL=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
+CONFIG_DRIVER_SERIAL_CADENCE=y
 # CONFIG_SPI is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 6d02cb28cadc..d35bd41232a1 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -28,7 +28,6 @@ choice
 
 config MACH_ZEDBOARD
 	bool "Avnet Zynq-7000 ZedBoard"
-	select DRIVER_SERIAL_CADENCE
 
 endchoice
 endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
