Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTChs-00088i-7J
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:22:17 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 30 Oct 2012 15:22:11 +0100
Message-Id: <1351606931-12815-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1351606931-12815-1-git-send-email-w.sang@pengutronix.de>
References: <1351606931-12815-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 2/2] configs: mx28evk: add NAND support
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Took the mx28evk defconfig, activated DMA and NAND, used savedefconfig;
this patch is the result.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/configs/imx28evk_defconfig |   18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/configs/imx28evk_defconfig b/arch/arm/configs/imx28evk_defconfig
index 0cc269b..3b69d4d 100644
--- a/arch/arm/configs/imx28evk_defconfig
+++ b/arch/arm/configs/imx28evk_defconfig
@@ -12,41 +12,41 @@ CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx28-evk/env"
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_MXS=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_STM=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
+CONFIG_MXS_APBH_DMA=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
