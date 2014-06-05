Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsSy0-0008SG-Nv
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 08:24:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 10:23:38 +0200
Message-Id: <1401956624-31802-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] ARM: friendlyarm_mini2440: refresh defconfig
To: barebox@lists.infradead.org

Fixes:

arch/arm/configs/friendlyarm_mini2440_defconfig:38:warning: override: reassigning to symbol CMD_TFTP
arch/arm/configs/friendlyarm_mini2440_defconfig:46:warning: override: reassigning to symbol FS_TFTP

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/friendlyarm_mini2440_defconfig | 31 +++++++++++--------------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index acd5e42..6cbafef 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -7,36 +7,33 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x33e00000
 CONFIG_BROKEN=y
 CONFIG_PROMPT="mini2440:"
-CONFIG_LONGHELP=y
 CONFIG_GLOB=y
-CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-mini2440/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
 CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
 CONFIG_USB=y
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
