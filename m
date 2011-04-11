Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QI-7E
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:39:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:44 +0200
Message-Id: <1302532791-20664-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] ARM omap: add xload helper functions
To: barebox@lists.infradead.org

Add some common xload helper functions to determine the boot source
on omap3/4 and to load images from mmc and nand.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile             |    2 +-
 arch/arm/mach-omap/include/mach/xload.h |   16 +++++++++
 arch/arm/mach-omap/omap3_generic.c      |   14 ++++++++
 arch/arm/mach-omap/omap4_generic.c      |   14 ++++++++
 arch/arm/mach-omap/xload.c              |   54 +++++++++++++++++++++++++++++++
 5 files changed, 99 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/xload.h
 create mode 100644 arch/arm/mach-omap/xload.c

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 9c31456..a4b9a55 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -25,4 +25,4 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
-obj-y += omap-uart.o gpio.o
+obj-y += omap-uart.o gpio.o xload.o
diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
new file mode 100644
index 0000000..844b57f
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/xload.h
@@ -0,0 +1,16 @@
+#ifndef _MACH_XLOAD_H
+#define _MACH_XLOAD_H
+
+void *omap_xload_boot_nand(int offset, int size);
+void *omap_xload_boot_mmc(void);
+
+enum omap_boot_src {
+	OMAP_BOOTSRC_UNKNOWN,
+	OMAP_BOOTSRC_MMC1,
+	OMAP_BOOTSRC_NAND,
+};
+
+enum omap_boot_src omap3_bootsrc(void);
+enum omap_boot_src omap4_bootsrc(void);
+
+#endif /* _MACH_XLOAD_H */
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index c1940d2..661a971 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -46,6 +46,7 @@
 #include <mach/wdt.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
+#include <mach/xload.h>
 
 /**
  * @brief Reset the CPU
@@ -483,3 +484,16 @@ void a_init(void)
 #endif
 
 }
+
+#define OMAP3_TRACING_VECTOR1 0x4020ffb4
+
+enum omap_boot_src omap3_bootsrc(void)
+{
+	u32 bootsrc = readl(OMAP3_TRACING_VECTOR1);
+
+	if (bootsrc & (1 << 2))
+		return OMAP_BOOTSRC_NAND;
+	if (bootsrc & (1 << 6))
+		return OMAP_BOOTSRC_MMC1;
+	return OMAP_BOOTSRC_UNKNOWN;
+}
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 45e6c86..e4838e9 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -5,6 +5,7 @@
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
+#include <mach/xload.h>
 
 void __noreturn reset_cpu(unsigned long addr)
 {
@@ -404,3 +405,16 @@ static int omap_vector_init(void)
 	return 0;
 }
 core_initcall(omap_vector_init);
+
+#define OMAP4_TRACING_VECTOR3 0x4030d048
+
+enum omap_boot_src omap4_bootsrc(void)
+{
+	u32 bootsrc = readl(OMAP4_TRACING_VECTOR3);
+
+	if (bootsrc & (1 << 3))
+		return OMAP_BOOTSRC_NAND;
+	if (bootsrc & (1 << 5))
+		return OMAP_BOOTSRC_MMC1;
+	return OMAP_BOOTSRC_UNKNOWN;
+}
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
new file mode 100644
index 0000000..216b9b5
--- /dev/null
+++ b/arch/arm/mach-omap/xload.c
@@ -0,0 +1,54 @@
+#include <common.h>
+#include <partition.h>
+#include <nand.h>
+#include <driver.h>
+#include <linux/mtd/mtd.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <mach/xload.h>
+#include <sizes.h>
+
+void *omap_xload_boot_nand(int offset, int size)
+{
+	int ret;
+	void *to = xmalloc(size);
+	struct cdev *cdev;
+
+	devfs_add_partition("nand0", offset, size, PARTITION_FIXED, "x");
+	dev_add_bb_dev("x", "bbx");
+
+	cdev = cdev_open("bbx", O_RDONLY);
+	if (!cdev) {
+		printf("failed to open nand\n");
+		return NULL;
+	}
+
+	ret = cdev_read(cdev, to, size, 0, 0);
+	if (ret != size) {
+		printf("failed to read from nand\n");
+		return NULL;
+	}
+
+	return to;
+}
+
+void *omap_xload_boot_mmc(void)
+{
+	int ret;
+	void *buf;
+	int len;
+
+	ret = mount("disk0.0", "fat", "/");
+	if (ret) {
+		printf("mounting sd card failed with %d\n", ret);
+		return NULL;
+	}
+
+	buf = read_file("/barebox.bin", &len);
+	if (!buf) {
+		printf("could not read barebox.bin from sd card\n");
+		return NULL;
+	}
+
+	return buf;
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
