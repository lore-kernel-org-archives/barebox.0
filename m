Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bn-18
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:46 +0200
Message-Id: <1377500163-28962-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/22] ARM: omap: Allow to set mmc devname used for booting
To: barebox@lists.infradead.org

This adds a omap_set_bootmmc_devname function which can be used
to specify the MMC boot device. In an xload configuration this
is then used to load the next stage. In a regular build this is
used to mount /boot.
Also a device_detect_by_name is added to allow to disable probing
for sd/mmc cards during startup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/generic.h |  8 ++++++++
 arch/arm/mach-omap/omap_generic.c         | 31 ++++++++++++++++++++++++++++---
 arch/arm/mach-omap/xload.c                | 19 ++++++++++++++++---
 3 files changed, 52 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index 3314faf..ee711ee 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -42,14 +42,22 @@ struct omap_barebox_part {
 
 #ifdef CONFIG_SHELL_NONE
 int omap_set_barebox_part(struct omap_barebox_part *part);
+int omap_set_mmc_dev(const char *mmcdev);
 #else
 static inline int omap_set_barebox_part(struct omap_barebox_part *part)
 {
 	return 0;
 }
+static inline int omap_set_mmc_dev(const char *mmcdev)
+{
+	return 0;
+}
 #endif
 
 extern uint32_t omap_bootinfo[3];
 void omap_save_bootinfo(void);
 
+void omap_set_bootmmc_devname(const char *devname);
+const char *omap_get_bootmmc_devname(void);
+
 #endif
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index cfd3dec..e7ca821 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -18,19 +18,44 @@
 #include <init.h>
 #include <io.h>
 #include <fs.h>
+#include <malloc.h>
 #include <linux/stat.h>
 
-#if defined(CONFIG_DEFAULT_ENVIRONMENT) && defined(CONFIG_MCI_STARTUP)
+static char *omap_bootmmc_dev;
+
+void omap_set_bootmmc_devname(char *devname)
+{
+	omap_bootmmc_dev = devname;
+}
+
+const char *omap_get_bootmmc_devname(void)
+{
+	return omap_bootmmc_dev;
+}
+
+#if defined(CONFIG_DEFAULT_ENVIRONMENT)
 static int omap_env_init(void)
 {
 	struct stat s;
-	char *diskdev = "/dev/disk0.0";
+	char *diskdev, *partname;
 	int ret;
 
 	if (bootsource_get() != BOOTSOURCE_MMC)
 		return 0;
 
-	ret = stat(diskdev, &s);
+	if (omap_bootmmc_dev)
+		diskdev = omap_bootmmc_dev;
+	else
+		diskdev = "disk0";
+
+	device_detect_by_name(diskdev);
+
+	partname = asprintf("/dev/%s.0", diskdev);
+
+	ret = stat(partname, &s);
+
+	free(partname);
+
 	if (ret) {
 		printf("no %s. using default env\n", diskdev);
 		return 0;
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 76746e2..b4d1b55 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -8,6 +8,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <sizes.h>
+#include <malloc.h>
 #include <filetype.h>
 #include <mach/generic.h>
 
@@ -98,11 +99,23 @@ static void *omap_xload_boot_mmc(void)
 	int ret;
 	void *buf;
 	int len;
-	const char *diskdev = "disk0.0";
+	const char *diskdev;
+	char *partname;
+
+	diskdev = omap_get_bootmmc_devname();
+	if (!diskdev)
+		diskdev = "disk0";
+
+	device_detect_by_name(diskdev);
+
+	partname = asprintf("%s.0", diskdev);
+
+	ret = mount(partname, "fat", "/");
+
+	free(partname);
 
-	ret = mount(diskdev, "fat", "/");
 	if (ret) {
-		printf("Unable to mount %s (%d)\n", diskdev, ret);
+		printf("Unable to mount %s (%d)\n", partname, ret);
 		return NULL;
 	}
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
