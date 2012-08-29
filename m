Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6eI0-0005GH-HA
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 09:10:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9C764BF0E6
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 11:10:17 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 29 Aug 2012 11:10:16 +0200
Message-Id: <1346231416-28541-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1346227318.3280.1.camel@lws-weitzel>
References: <1346227318.3280.1.camel@lws-weitzel>
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
Subject: [PATCH v3] xload: get barebox size from barebox_arm_head
To: barebox@lists.infradead.org

Add functions to read the barebox_arm_head, check barebox magicword
and read out the barebox image size.
Create a inital partion of 1Mb to access the barebox image on nand.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v2: remove fall back if header read fail 
v3: fix header check, rebase master 

 arch/arm/include/asm/barebox-arm-head.h |    4 ++
 arch/arm/mach-omap/include/mach/xload.h |    2 +-
 arch/arm/mach-omap/xload.c              |   58 ++++++++++++++++++++++++++++--
 3 files changed, 59 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 2c250e9..1ddfc0f 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -1,6 +1,10 @@
 #ifndef __ASM_ARM_HEAD_H
 #define __ASM_ARM_HEAD_H
 
+#define ARM_HEAD_SIZE		0x30
+#define HEAD_MAGICWORD_OFFSET	0x20
+#define HEAD_SIZE_OFFSET	0x2C
+
 static inline void barebox_arm_head(void)
 {
 	__asm__ __volatile__ (
diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
index 844b57f..26f1b68 100644
--- a/arch/arm/mach-omap/include/mach/xload.h
+++ b/arch/arm/mach-omap/include/mach/xload.h
@@ -1,7 +1,7 @@
 #ifndef _MACH_XLOAD_H
 #define _MACH_XLOAD_H
 
-void *omap_xload_boot_nand(int offset, int size);
+void *omap_xload_boot_nand(int offset);
 void *omap_xload_boot_mmc(void);
 
 enum omap_boot_src {
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 13024ab..d9765b7 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -7,16 +7,66 @@
 #include <fcntl.h>
 #include <mach/xload.h>
 #include <sizes.h>
+#include <asm/barebox-arm-head.h>
 
-void *omap_xload_boot_nand(int offset, int size)
+void *read_image_head(const char *name)
 {
+	void *header = xmalloc(ARM_HEAD_SIZE);
+	struct cdev *cdev;
 	int ret;
-	void *to = xmalloc(size);
+
+	cdev = cdev_open(name, O_RDONLY);
+	if (!cdev) {
+		printf("failed to open partition\n");
+		return NULL;
+	}
+
+	ret = cdev_read(cdev, header, ARM_HEAD_SIZE, 0, 0);
+	cdev_close(cdev);
+
+	if (ret != ARM_HEAD_SIZE) {
+		printf("failed to read from partition\n");
+		return NULL;
+	}
+
+	return header;
+}
+
+unsigned int get_image_size(void *head)
+{
+	unsigned int ret = 0;
+	unsigned int *psize = head + HEAD_SIZE_OFFSET;
+	const char *pmagic = head + HEAD_MAGICWORD_OFFSET;
+
+	if (!strcmp(pmagic, "barebox"))
+		ret = *psize;
+	debug("Detected barebox image size %u\n", ret);
+
+	return ret;
+}
+
+void *omap_xload_boot_nand(int offset)
+{
+	int ret;
+	int size;
+	void *to, *header;
 	struct cdev *cdev;
 
-	devfs_add_partition("nand0", offset, size, DEVFS_PARTITION_FIXED, "x");
+	devfs_add_partition("nand0", offset, SZ_1M, DEVFS_PARTITION_FIXED, "x");
 	dev_add_bb_dev("x", "bbx");
 
+	header = read_image_head("bbx");
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
 	cdev = cdev_open("bbx", O_RDONLY);
 	if (!cdev) {
 		printf("failed to open nand\n");
@@ -80,7 +130,7 @@ int run_shell(void)
 		printf("unknown boot source. Fall back to nand\n");
 	case OMAP_BOOTSRC_NAND:
 		printf("booting from NAND\n");
-		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
+		func = omap_xload_boot_nand(SZ_128K);
 		break;
 	}
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
