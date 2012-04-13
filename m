Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgxY-0004vo-B9
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:54:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:54:33 +0200
Message-Id: <1334325273-1701-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM Freescale i.MX6 Armadillo2: Add defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/freescale-mx6-arm2_defconfig |   69 +++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 arch/arm/configs/freescale-mx6-arm2_defconfig

diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale-mx6-arm2_defconfig
new file mode 100644
index 0000000..c150cc7
--- /dev/null
+++ b/arch/arm/configs/freescale-mx6-arm2_defconfig
@@ -0,0 +1,69 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX6=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x8000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx6-arm2/env/"
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
+CONFIG_NET_USB_SMSC95XX=y
+# CONFIG_SPI is not set
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
