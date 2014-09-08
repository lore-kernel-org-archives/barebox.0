Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQspq-0004o4-Tr
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:53:59 +0000
Received: by mail-lb0-f172.google.com with SMTP id w7so1498188lbi.31
 for <barebox@lists.infradead.org>; Sun, 07 Sep 2014 23:53:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  8 Sep 2014 10:53:08 +0400
Message-Id: <1410159189-17328-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 6/7] openrisc: generic_defconfig: enable device tree stuff
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
