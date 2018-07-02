Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZqeP-0004Rj-O5
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:41:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jul 2018 06:41:07 +0200
Message-Id: <20180702044108.11466-4-s.hauer@pengutronix.de>
In-Reply-To: <20180702044108.11466-1-s.hauer@pengutronix.de>
References: <20180702044108.11466-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX: bbu: reimplement
 IMX_INTERNAL_FLAG_KEEP_DOSPART flag
To: Barebox List <barebox@lists.infradead.org>

This patch reimplements the IMX_INTERNAL_FLAG_KEEP_DOSPART flag
and makes it more generic. Until now we only kept a dos partition
table over the update. Beginning with i.MX8 we may also want to
preserve a GPT, so we have to extend the preserved area.

It might also be the case that not (only) a partition table is
stored in the initial area of a device, but also other unrelated
data, so it's better to just keep the initial area that is unused
by the i.MX ROM. It's also good to export the flag to allow boards
to specify the initial area shall be preserved.

When a board wants to set the flag for a mtd like device then it
has to check for suitable erase sizes beforehand. We do not check
this (yet).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 65 +++++++++-------------------
 arch/arm/mach-imx/include/mach/bbu.h | 15 +++++++
 2 files changed, 35 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index fae94fdc4e..7a512b1de4 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -34,9 +34,8 @@
 
 #define FLASH_HEADER_OFFSET_MMC		0x400
 
-#define IMX_INTERNAL_FLAG_NAND		BIT(16)
-#define IMX_INTERNAL_FLAG_KEEP_DOSPART	BIT(17)
-#define IMX_INTERNAL_FLAG_ERASE		BIT(18)
+#define IMX_INTERNAL_FLAG_NAND		BIT(31)
+#define IMX_INTERNAL_FLAG_ERASE		BIT(30)
 
 struct imx_internal_bbu_handler {
 	struct bbu_handler handler;
@@ -52,26 +51,31 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		const char *devicefile, struct bbu_data *data,
 		const void *buf, int image_len)
 {
-	int fd, ret;
-	int written = 0;
+	int fd, ret, offset = 0;
 
 	fd = open(devicefile, O_RDWR | O_CREAT);
 	if (fd < 0)
 		return fd;
 
+	if (imx_handler->handler.flags & IMX_BBU_FLAG_KEEP_HEAD) {
+		image_len -= imx_handler->flash_header_offset;
+		offset += imx_handler->flash_header_offset;
+		buf += imx_handler->flash_header_offset;
+	}
+
 	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE) {
-		pr_debug("%s: unprotecting %s from 0 to 0x%08x\n", __func__,
-				devicefile, image_len);
-		ret = protect(fd, image_len, 0, 0);
+		pr_debug("%s: unprotecting %s from 0x%08x to 0x%08x\n", __func__,
+				devicefile, offset, image_len);
+		ret = protect(fd, image_len, offset, 0);
 		if (ret && ret != -ENOSYS) {
 			pr_err("unprotecting %s failed with %s\n", devicefile,
 					strerror(-ret));
 			goto err_close;
 		}
 
-		pr_debug("%s: erasing %s from 0 to 0x%08x\n", __func__,
-				devicefile, image_len);
-		ret = erase(fd, image_len, 0);
+		pr_debug("%s: erasing %s from 0x%08x to 0x%08x\n", __func__,
+				devicefile, offset, image_len);
+		ret = erase(fd, image_len, offset);
 		if (ret) {
 			pr_err("erasing %s failed with %s\n", devicefile,
 					strerror(-ret));
@@ -79,43 +83,14 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		}
 	}
 
-	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_KEEP_DOSPART) {
-		void *mbr = xzalloc(512);
-
-		pr_debug("%s: reading DOS partition table in order to keep it\n", __func__);
-
-		ret = read(fd, mbr, 512);
-		if (ret < 0) {
-			free(mbr);
-			goto err_close;
-		}
-
-		memcpy(mbr, buf, 0x1b8);
-
-		ret = lseek(fd, 0, SEEK_SET);
-		if (ret) {
-			free(mbr);
-			goto err_close;
-		}
-
-		ret = write(fd, mbr, 512);
-
-		free(mbr);
-
-		if (ret < 0)
-			goto err_close;
-
-		written = 512;
-	}
-
-	ret = write(fd, buf + written, image_len - written);
+	ret = pwrite(fd, buf, image_len, offset);
 	if (ret < 0)
 		goto err_close;
 
 	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE) {
-		pr_debug("%s: protecting %s from 0 to 0x%08x\n", __func__,
-				devicefile, image_len);
-		ret = protect(fd, image_len, 0, 1);
+		pr_debug("%s: protecting %s from 0x%08x to 0x%08x\n", __func__,
+				devicefile, offset, image_len);
+		ret = protect(fd, image_len, offset, 1);
 		if (ret && ret != -ENOSYS) {
 			pr_err("protecting %s failed with %s\n", devicefile,
 					strerror(-ret));
@@ -479,7 +454,7 @@ imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags |
-				     IMX_INTERNAL_FLAG_KEEP_DOSPART);
+				     IMX_BBU_FLAG_KEEP_HEAD);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
 	imx_handler->handler.handler = handler;
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index d623828312..f19aacce06 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -7,6 +7,21 @@
 struct imx_dcd_entry;
 struct imx_dcd_v2_entry;
 
+/*
+ * The ROM code reads images from a certain offset of the boot device
+ * (usually 0x400), whereas the update images start from offset 0x0.
+ * Set this flag to skip the offset on both the update image and the
+ * device so that the initial boot device portion is preserved. This
+ * is useful if a partition table or other data is in this area.
+ */
+#define IMX_BBU_FLAG_KEEP_HEAD	BIT(16)
+
+/*
+ * The upper 16 bit of the flags passes to the below functions are reserved
+ * for i.MX specific flags
+ */
+#define IMX_BBU_FLAG_MASK	0xffff0000
+
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
