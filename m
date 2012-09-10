Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TB0dT-000787-4I
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 09:50:32 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 10 Sep 2012 11:50:24 +0200
Message-Id: <1347270624-18878-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] omap: add SPI as a boot mode for xload
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/xload.h |    1 +
 arch/arm/mach-omap/xload.c              |   40 +++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
index 26f1b68..9b44388 100644
--- a/arch/arm/mach-omap/include/mach/xload.h
+++ b/arch/arm/mach-omap/include/mach/xload.h
@@ -8,6 +8,7 @@ enum omap_boot_src {
 	OMAP_BOOTSRC_UNKNOWN,
 	OMAP_BOOTSRC_MMC1,
 	OMAP_BOOTSRC_NAND,
+	OMAP_BOOTSRC_SPI1,
 };
 
 enum omap_boot_src omap3_bootsrc(void);
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 0afeea9..31c2e37 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -103,6 +103,42 @@ void *omap_xload_boot_mmc(void)
 	return buf;
 }
 
+void *omap_xload_boot_spi(int offset)
+{
+	int ret;
+	int size;
+	void *to, *header;
+	struct cdev *cdev;
+
+	devfs_add_partition("m25p0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
+
+	header = read_image_head("x");
+	if (header == NULL)
+		return NULL;
+
+	size = get_image_size(header);
+	if (!size) {
+		printf("failed to get image size\n");
+		return NULL;
+	}
+
+	to = xmalloc(size);
+
+	cdev = cdev_open("x", O_RDONLY);
+	if (!cdev) {
+		printf("failed to open spi flash\n");
+		return NULL;
+	}
+
+	ret = cdev_read(cdev, to, size, 0, 0);
+	if (ret != size) {
+		printf("failed to read from spi flash\n");
+		return NULL;
+	}
+
+	return to;
+}
+
 enum omap_boot_src omap_bootsrc(void)
 {
 #if defined(CONFIG_ARCH_OMAP3)
@@ -131,6 +167,10 @@ int run_shell(void)
 		printf("booting from NAND\n");
 		func = omap_xload_boot_nand(SZ_128K);
 		break;
+	case OMAP_BOOTSRC_SPI1:
+		printf("booting from SPI1\n");
+		func = omap_xload_boot_spi(SZ_128K);
+		break;
 	}
 
 	if (!func) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
