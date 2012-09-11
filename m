Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBOsS-0001uk-VG
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 11:43:37 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 11 Sep 2012 13:43:27 +0200
Message-Id: <1347363808-8945-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/2] xload: make internal functions static
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/xload.h |    3 ---
 arch/arm/mach-omap/xload.c              |    8 ++++----
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
index 26f1b68..9294477 100644
--- a/arch/arm/mach-omap/include/mach/xload.h
+++ b/arch/arm/mach-omap/include/mach/xload.h
@@ -1,9 +1,6 @@
 #ifndef _MACH_XLOAD_H
 #define _MACH_XLOAD_H
 
-void *omap_xload_boot_nand(int offset);
-void *omap_xload_boot_mmc(void);
-
 enum omap_boot_src {
 	OMAP_BOOTSRC_UNKNOWN,
 	OMAP_BOOTSRC_MMC1,
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 0afeea9..18a90c9 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -9,7 +9,7 @@
 #include <sizes.h>
 #include <filetype.h>
 
-void *read_image_head(const char *name)
+static void *read_image_head(const char *name)
 {
 	void *header = xmalloc(ARM_HEAD_SIZE);
 	struct cdev *cdev;
@@ -32,7 +32,7 @@ void *read_image_head(const char *name)
 	return header;
 }
 
-unsigned int get_image_size(void *head)
+static unsigned int get_image_size(void *head)
 {
 	unsigned int ret = 0;
 	unsigned int *psize = head + ARM_HEAD_SIZE_OFFSET;
@@ -44,7 +44,7 @@ unsigned int get_image_size(void *head)
 	return ret;
 }
 
-void *omap_xload_boot_nand(int offset)
+static void *omap_xload_boot_nand(int offset)
 {
 	int ret;
 	int size;
@@ -81,7 +81,7 @@ void *omap_xload_boot_nand(int offset)
 	return to;
 }
 
-void *omap_xload_boot_mmc(void)
+static void *omap_xload_boot_mmc(void)
 {
 	int ret;
 	void *buf;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
