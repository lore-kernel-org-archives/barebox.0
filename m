Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqc-0006QL-Ev
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:21:00 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:19 +0200
Message-Id: <1345472428-17417-5-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 04/13] omap: add SPI as a boot mode for xload
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/xload.h |    1 +
 arch/arm/mach-omap/xload.c              |   27 +++++++++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
index 844b57f..c62912a 100644
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
index 13024ab..1daa827 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -54,6 +54,29 @@ void *omap_xload_boot_mmc(void)
 	return buf;
 }
 
+void *omap_xload_boot_spi(int offset, int size)
+{
+	int ret;
+	void *to = xmalloc(size);
+	struct cdev *cdev;
+
+	devfs_add_partition("m25p0", offset, size, DEVFS_PARTITION_FIXED, "x");
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
@@ -82,6 +105,10 @@ int run_shell(void)
 		printf("booting from NAND\n");
 		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
 		break;
+	case OMAP_BOOTSRC_SPI1:
+		printf("booting from SPI1\n");
+		func = omap_xload_boot_spi(SZ_128K, SZ_512K);
+		break;
 	}
 
 	if (!func) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
