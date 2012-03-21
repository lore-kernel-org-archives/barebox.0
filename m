Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay05.ispgateway.de ([80.67.31.94])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SAONE-0003th-2E
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 16:26:58 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Wed, 21 Mar 2012 18:27:23 +0200
Message-Id: <1332347246-8777-1-git-send-email-dimov@ronetix.at>
In-Reply-To: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH v3 1/4] pm9g45: boot from NAND
To: barebox@lists.infradead.org

- change the kernel and rootfs locations
- correct the NAND mtd partitions
- fix the DDR RAM location(so BareBox load address)
- expect the root file system type to be UBIFS

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
since v1:
	this patch I gorgot to send, so it pops-up now

since v2:
	- used savedefconfig to minimize the config file
	- Linux partition in NAND named "kernel" (lack of ".bb" suffix)
---
 arch/arm/boards/pm9g45/env/config |    8 +++---
 arch/arm/configs/pm9g45_defconfig |   43 +++++++++++-------------------------
 2 files changed, 17 insertions(+), 34 deletions(-)

diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
index 3dea724..5f05e6f 100644
--- a/arch/arm/boards/pm9g45/env/config
+++ b/arch/arm/boards/pm9g45/env/config
@@ -11,9 +11,9 @@ ip=dhcp
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
+kernel_loc=nand
 # can be either 'net', 'nand' or 'initrd'
-rootfs_loc=net
+rootfs_loc=nand
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
@@ -25,8 +25,8 @@ kernelimage=uImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
-rootfs_mtdblock_nand=3
+nand_parts="128k(bootstrap)ro,256k(barebox)ro,1664k(bareboxenv),3M(kernel),-(root)"
+rootfs_mtdblock_nand=4
 
 autoboot_timeout=3
 
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index bf9af22..d199abd 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -1,55 +1,38 @@
 CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_MACH_PM9G45=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PROMPT="pm9g45:"
+CONFIG_AEABI=y
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
-CONFIG_PROMPT_HUSH_PS2="y"
-CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_PASSWD_SUM_SHA1=y
 CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9g45/env"
+CONFIG_POLLER=y
+CONFIG_ENABLE_DEVICE_NOISE=y
 CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_I2C=y
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
 CONFIG_MTD=y
 CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_EEPROM_AT25=y
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
