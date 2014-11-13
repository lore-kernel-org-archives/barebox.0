Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XotZq-0004dZ-UA
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 12:32:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AB7ADA0048E
 for <barebox@lists.infradead.org>; Thu, 13 Nov 2014 13:32:28 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 13 Nov 2014 13:31:46 +0100
Message-Id: <1415881906-19004-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <20141113073732.GN30369@pengutronix.de>
References: <20141113073732.GN30369@pengutronix.de>
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
Subject: [PATCH v2] ARM: omap: Add bootsource serial to xload
To: barebox@lists.infradead.org

If booted from serial via xmodem, also get barebox.bin per xmodem
For first stage you need the .pblx file instead of MLO.

Add serial boot to am335x_mlo_defconfig introduce some cleanups
by savedefconfig

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v2: make serialboot configurable
    select it in am335x_mlo_defconfig

 arch/arm/configs/am335x_mlo_defconfig |  4 +--
 arch/arm/mach-omap/Kconfig            |  9 +++++++
 arch/arm/mach-omap/xload.c            | 46 +++++++++++++++++++++++++++++++++++
 3 files changed, 56 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index d691570..9734da6 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -1,12 +1,12 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_OMAP_BUILD_IFT=y
+CONFIG_OMAP_SERIALBOOT=y
 CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_PCM051=y
 CONFIG_MACH_PFLA03=y
 CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x0
@@ -37,10 +37,8 @@ CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 # CONFIG_MCI_WRITE is not set
 CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_PINCTRL=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_BUS_OMAP_GPMC=y
-# CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index f9b5ec3..0996ed9 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -118,6 +118,15 @@ config OMAP4_USBBOOT
 	  You need the utility program omap4_usbboot to boot from USB.
 	  Please read omap4_usb_booting.txt for more information.
 
+config OMAP_SERIALBOOT
+	bool "enable booting from serial"
+	select XYMODEM
+	select FS_RAMFS
+	depends on ARCH_AM33XX && SHELL_NONE
+	help
+	  Say Y here if you want to load the 2nd stage barebox.bin with
+	  xmodem after booting from serial line.
+
 config OMAP_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index e9d7bbb..8d9d84c 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -11,6 +11,7 @@
 #include <sizes.h>
 #include <malloc.h>
 #include <filetype.h>
+#include <xymodem.h>
 #include <mach/generic.h>
 
 struct omap_barebox_part *barebox_part;
@@ -184,6 +185,45 @@ static void *omap4_xload_boot_usb(void){
 	return buf;
 }
 
+static void *omap_serial_boot(void){
+	struct console_device *cdev;
+	int ret;
+	void *buf;
+	int len;
+	int fd;
+
+	/* need temporary place to store file */
+	ret = mount("none", "ramfs", "/", NULL);
+	if (ret < 0) {
+		printf("failed to mount ramfs\n");
+		return NULL;
+	}
+
+	cdev = console_get_first_active();
+	if (!cdev) {
+		printf("failed to get console\n");
+		return NULL;
+	}
+
+	fd = open("/barebox.bin", O_WRONLY | O_CREAT);
+	if (fd < 0) {
+		printf("could not create barebox.bin\n");
+		return NULL;
+	}
+
+	ret = do_load_serial_xmodem(cdev, fd);
+	if (ret < 0) {
+		printf("loadx failed\n");
+		return NULL;
+	}
+
+	buf = read_file("/barebox.bin", &len);
+	if (!buf)
+		printf("could not read barebox.bin from serial\n");
+
+	return buf;
+}
+
 /*
  * Replaces the default shell in xload configuration
  */
@@ -218,6 +258,12 @@ static __noreturn int omap_xload(void)
 		func = omap_xload_boot_spi(barebox_part->nor_offset,
 					barebox_part->nor_size);
 		break;
+	case BOOTSOURCE_SERIAL:
+		if (IS_ENABLED(CONFIG_OMAP_SERIALBOOT)) {
+			printf("booting from serial\n");
+			func = omap_serial_boot();
+			break;
+		}
 	default:
 		printf("unknown boot source. Fall back to nand\n");
 		func = omap_xload_boot_nand(barebox_part->nand_offset,
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
