Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2ai3-0004I0-Ky
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 10:27:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1e2ahe-0003Lx-IN
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 12:26:58 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 12 Oct 2017 12:26:53 +0200
Message-Id: <20171012102658.17104-7-l.stach@pengutronix.de>
In-Reply-To: <20171012102658.17104-1-l.stach@pengutronix.de>
References: <20171012102658.17104-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 07/12] ARM: vexpress: regenerate config
To: barebox@lists.infradead.org

Enable some more features, so the default configuration gets more
in line with other platforms.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/vexpress_defconfig | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index e31da4a8c668..f6a57de75cd9 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -4,7 +4,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="vexpress: "
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -12,9 +11,10 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
@@ -38,15 +38,25 @@ CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_MTD_CONCAT=y
+CONFIG_DRIVER_CFI=y
+CONFIG_MCI=y
+CONFIG_MCI_MMCI=y
+# CONFIG_PINCTRL is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST_SHA1_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
