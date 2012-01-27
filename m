Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqjrJ-0004bS-M8
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 11:20:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jan 2012 12:20:34 +0100
Message-Id: <1327663234-16330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM omap pandaboard: update defconfig
To: barebox@lists.infradead.org

- enable bootm command
- enable iomem command
- enable magicvar command
- disable nand support, the panda does not have nand

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/panda_defconfig |   18 +++++++++++-------
 1 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 27592e5..68cc11e 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -11,11 +11,9 @@ CONFIG_PROMPT="barebox> "
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_TIMESTAMP is not set
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/panda/env"
 CONFIG_CMD_EDIT=y
@@ -25,14 +23,24 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
@@ -46,10 +54,6 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
 # CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_UBI=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_MCI=y
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
