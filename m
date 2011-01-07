Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbDKM-0001I9-CR
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 14:30:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 15:29:56 +0100
Message-Id: <1294410597-25824-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294410597-25824-1-git-send-email-s.hauer@pengutronix.de>
References: <1294410597-25824-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] update scb9328_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/scb9328_defconfig |   28 +++++++++++++++++++++++++++-
 1 files changed, 27 insertions(+), 1 deletions(-)

diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 49bdc0d..ee0e2fc 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -1,11 +1,24 @@
 CONFIG_ARCH_IMX=y
 CONFIG_MACH_SCB9328=y
+CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/scb9328/env"
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/scb9328/env/"
+CONFIG_POLLER=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_RESET=y
@@ -13,10 +26,23 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNLZO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9000=y
 CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_UBI=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
