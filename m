Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upy4H-0005k9-6o
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 09:55:46 +0000
Received: by mail-ee0-f46.google.com with SMTP id d41so4377518eek.19
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 02:55:23 -0700 (PDT)
Received: from [127.0.0.1] (fritzc.com. [78.47.220.26])
 by mx.google.com with ESMTPSA id bj46sm6456127eeb.13.2013.06.21.02.55.22
 for <barebox@lists.infradead.org>
 (version=SSLv3 cipher=RC4-SHA bits=128/128);
 Fri, 21 Jun 2013 02:55:23 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1371808410.3949.13.camel@mars>
References: <1371808410.3949.13.camel@mars>
Date: Fri, 21 Jun 2013 11:55:21 +0200
Message-ID: <1371808521.3949.14.camel@mars>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM OMAP: MLO: add support for loading Barebox from UBI
To: barebox@lists.infradead.org

This patch adds support to OMAP MLO to load a secound
stage bootloader from a static UBI volume.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/mach-omap/Kconfig |   44 +++++++++++++++++++++++++
 arch/arm/mach-omap/xload.c |   76 ++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 118 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 236a165..e08524e 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -213,6 +213,50 @@ choice
 
 endchoice
 
+config BB_IN_UBI
+	bool "Load Barebox from an UBI static volume"
+	depends on ARCH_OMAP3
+	depends on UBI
+	depends on OMAP_BUILD_IFT
+	help
+	  Say Y here if you would like to make the MLO load barebox
+	  from an UBI volume if bootsource is NAND.
+
+if BB_IN_UBI
+
+menu "Configure Loading Barebox from UBI"
+
+config BB_IN_UBI_PARTITION_START
+	hex
+	default 0x00080000
+	prompt "Offset size where partition begins"
+	help
+	  Start of mtd partition which holdes UBI volumes for barebox and
+	  barebox-environment. This value depends on your board partition
+	  layout. Default offset is 512k.
+
+config BB_IN_UBI_PARTITION_SIZE
+	hex
+	default 0xff80000
+	prompt "Length of partition"
+	help
+	  Size of mtd partition which holdes UBI volumes for barebox and
+	  barebox-environment. This value depends on your board partition
+	  layout. Default length is set to 255.5MB.
+
+config BB_IN_UBI_VOLNAME
+	string
+	default "ubi0.barebox_0"
+	prompt "Name of UBI static volume holding Barebox"
+	help
+	  Name of UBI static volume holding Barebox inside the mtd
+	  partition. This string value depends on your UBI volume name
+	  configuration scheme. Default string is "ubi0.barebox_0".
+
+endmenu
+
+endif
+
 endif
 
 config MACH_OMAP_ADVANCED_MUX
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 3cce3f2..6c51c55 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -9,6 +9,10 @@
 #include <fcntl.h>
 #include <sizes.h>
 #include <filetype.h>
+#include <mtd/ubi-user.h>
+#include <mtd/ubi-media.h>
+#include <linux/mtd/mtd-abi.h>
+#include <asm-generic/ioctl.h>
 
 static void *read_image_head(const char *name)
 {
@@ -82,6 +86,69 @@ static void *omap_xload_boot_nand(int offset)
 	return to;
 }
 
+static void *omap_xload_boot_ubi_nand(void)
+{
+	void *to = NULL;
+#ifdef CONFIG_BB_IN_UBI
+	void *header;
+	int ret;
+	struct cdev *cdev;
+	struct mtd_info_user user;
+	int size;
+
+	devfs_add_partition("nand0", CONFIG_BB_IN_UBI_PARTITION_START,
+		CONFIG_BB_IN_UBI_PARTITION_SIZE, DEVFS_PARTITION_FIXED, "u");
+	dev_add_bb_dev("u", "bbu");
+
+	cdev = cdev_open("u", O_RDONLY);
+	if (!cdev) {
+		printf("cdev_open failed\n");
+		return NULL;
+	}
+
+	ret = cdev_ioctl(cdev, MEMGETINFO, &user);
+	if (!ret)
+		ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0);
+	else {
+		printf("failed to attach: %s\n", strerror(-ret));
+		cdev_close(cdev);
+		return NULL;
+	}
+
+	cdev_close(cdev);
+
+	header = read_image_head(CONFIG_BB_IN_UBI_VOLNAME);
+	if (header == NULL) {
+		printf("failed to read image head\n");
+		return NULL;
+	}
+
+	size = get_image_size(header);
+	if (!size) {
+		printf("failed to get image size\n");
+		return NULL;
+	}
+
+	to = xmalloc(size);
+
+	cdev = cdev_open(CONFIG_BB_IN_UBI_VOLNAME, O_RDONLY);
+	if (!cdev) {
+		printf("cdev_open failed\n");
+		return NULL;
+	}
+
+	if (cdev_read(cdev, to, size, 0, 0) < 0) {
+		printf("cdev_read failed\n");
+		cdev_close(cdev);
+		return NULL;
+        }
+
+	cdev_close(cdev);
+
+#endif
+	return to;
+}
+
 static void *omap_xload_boot_mmc(void)
 {
 	int ret;
@@ -180,8 +247,13 @@ static __noreturn int omap_xload(void)
 			printf("booting from USB not enabled\n");
 		}
 	case BOOTSOURCE_NAND:
-		printf("booting from NAND\n");
-		func = omap_xload_boot_nand(SZ_128K);
+		if (IS_ENABLED(CONFIG_BB_IN_UBI)) {
+			printf("booting from UBI static volume\n");
+			func = omap_xload_boot_ubi_nand();
+		} else {
+			printf("booting from NAND\n");
+			func = omap_xload_boot_nand(SZ_128K);
+		}
 		break;
 	case BOOTSOURCE_SPI:
 		printf("booting from SPI\n");
-- 
1.7.10.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
