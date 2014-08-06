Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XF960-0007CF-4E
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 21:50:08 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so2059848lbi.27
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 14:49:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Aug 2014 01:42:15 +0400
Message-Id: <1407361335-14875-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
References: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/6] openrisc: generic_defconfig: enable device tree stuff
To: barebox@lists.infradead.org

Also enable iomem and miitool.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/configs/generic_defconfig | 35 +++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
index deaef2a..1f2d40e 100644
--- a/arch/openrisc/configs/generic_defconfig
+++ b/arch/openrisc/configs/generic_defconfig
@@ -1,26 +1,35 @@
-CONFIG_LONGHELP=y
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="or1ksim"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_FLASH=y
 # CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_NET=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_ETHOC=y
+CONFIG_FS_TFTP=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
