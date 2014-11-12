Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoSZg-0001q3-QF
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 07:42:45 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8E285A0033B
 for <barebox@lists.infradead.org>; Wed, 12 Nov 2014 08:42:33 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 12 Nov 2014 08:41:54 +0100
Message-Id: <1415778114-41864-2-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1415778114-41864-1-git-send-email-j.weitzel@phytec.de>
References: <1415778114-41864-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 2/2] ARM: omap: Add bootsource serial to xload
To: barebox@lists.infradead.org

If booted from serial via xmodem, also get barebox.bin per xmodem
For first stage you need the .pblx file instead of MLO.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/mach-omap/Kconfig |  7 +++++++
 arch/arm/mach-omap/xload.c | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index f9b5ec3..953dd8f 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -118,6 +118,13 @@ config OMAP4_USBBOOT
 	  You need the utility program omap4_usbboot to boot from USB.
 	  Please read omap4_usb_booting.txt for more information.
 
+config OMAP_SERIALBOOT
+	bool
+	default y
+	select XYMODEM
+	select FS_RAMFS
+	depends on ARCH_AM33XX && SHELL_NONE
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
