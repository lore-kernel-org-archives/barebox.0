Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TP21q-0007Xq-JF
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 02:09:39 +0000
Received: from mail606.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 663E3DC23B4
 for <barebox@lists.infradead.org>; Fri, 19 Oct 2012 04:16:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 19 Oct 2012 04:07:18 +0200
Message-Id: <1350612438-21329-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350612438-21329-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121019020430.GE22418@game.jcrosoft.org>
 <1350612438-21329-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] pm9g45: fix config and defconfig
To: barebox@lists.infradead.org

 - add dhcp vendor_id
 - enable glob support (needed by nand)
 - enable pbl
 - enable MMU
 - enable bootm oftree support
 - enable loadb
 - enable nfs
 - use zImage by default

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9g45/env/config |   13 ++++++++-----
 arch/arm/configs/pm9g45_defconfig |   32 ++++++++++++++++++++++++--------
 2 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
index 5f05e6f..18ac565 100644
--- a/arch/arm/boards/pm9g45/env/config
+++ b/arch/arm/boards/pm9g45/env/config
@@ -2,7 +2,8 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+ip=dhcp-barebox
+global.dhcp.vendor_id=barebox-pm9g45
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
@@ -11,16 +12,18 @@ ip=dhcp
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=nand
+kernel_loc=nfs
 # can be either 'net', 'nand' or 'initrd'
-rootfs_loc=nand
+rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nfs
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-#kernelimage=zImage
-kernelimage=uImage
+kernelimage=zImage
+#kernelimage=uImage
 #kernelimage=Image
 #kernelimage=Image.lzo
 
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 331f122..958301d 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -1,36 +1,52 @@
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_PM9G45=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_MALLOC_TLSF=y
 CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_GLOB_SORT=y
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9g45/env"
-CONFIG_POLLER=y
-CONFIG_ENABLE_DEVICE_NOISE=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
-CONFIG_DRIVER_SPI_ATMEL=y
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_SST25L=y
+# CONFIG_SPI is not set
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_DISK_ATA=y
@@ -40,7 +56,7 @@ CONFIG_USB_OHCI_AT91=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
-CONFIG_EEPROM_AT25=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
