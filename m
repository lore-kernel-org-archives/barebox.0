Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoGg-0002vu-P2
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:43:54 +0000
Received: by mail-pg0-x243.google.com with SMTP id l2-v6so11861315pgc.7
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:43:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:43:14 -0700
Message-Id: <20180612184316.4579-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184316.4579-1-andrew.smirnov@gmail.com>
References: <20180612184316.4579-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] ARM: i.MX: bbu: Use pr_* functions for output
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use pr_* function family for all of the logging in the file both for
consistency with the rest of the code and to make all of the output be
properly tagged with loglevel information.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 30 ++++++++++++++--------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index b4e78aea4..c69160f47 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -61,20 +61,20 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		return fd;
 
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
-		debug("%s: unprotecting %s from 0 to 0x%08x\n", __func__,
+		pr_debug("%s: unprotecting %s from 0 to 0x%08x\n", __func__,
 				devicefile, image_len);
 		ret = protect(fd, image_len, 0, 0);
 		if (ret && ret != -ENOSYS) {
-			printf("unprotecting %s failed with %s\n", devicefile,
+			pr_err("unprotecting %s failed with %s\n", devicefile,
 					strerror(-ret));
 			goto err_close;
 		}
 
-		debug("%s: erasing %s from 0 to 0x%08x\n", __func__,
+		pr_debug("%s: erasing %s from 0 to 0x%08x\n", __func__,
 				devicefile, image_len);
 		ret = erase(fd, image_len, 0);
 		if (ret) {
-			printf("erasing %s failed with %s\n", devicefile,
+			pr_err("erasing %s failed with %s\n", devicefile,
 					strerror(-ret));
 			goto err_close;
 		}
@@ -83,7 +83,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_KEEP_DOSPART) {
 		void *mbr = xzalloc(512);
 
-		debug("%s: reading DOS partition table in order to keep it\n", __func__);
+		pr_debug("%s: reading DOS partition table in order to keep it\n", __func__);
 
 		ret = read(fd, mbr, 512);
 		if (ret < 0) {
@@ -114,11 +114,11 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		goto err_close;
 
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
-		debug("%s: protecting %s from 0 to 0x%08x\n", __func__,
+		pr_debug("%s: protecting %s from 0 to 0x%08x\n", __func__,
 				devicefile, image_len);
 		ret = protect(fd, image_len, 0, 1);
 		if (ret && ret != -ENOSYS) {
-			printf("protecting %s failed with %s\n", devicefile,
+			pr_err("protecting %s failed with %s\n", devicefile,
 					strerror(-ret));
 		}
 	}
@@ -166,7 +166,7 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
 	if (ret)
 		return ret;
 
-	printf("updating to %s\n", data->devicefile);
+	pr_info("updating to %s\n", data->devicefile);
 
 	ret = imx_bbu_write_device(imx_handler, data->devicefile, data, data->image, data->len);
 
@@ -257,7 +257,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 
 		if (ret) {
 			if (!offset) {
-				printf("1st block is bad. This is not supported\n");
+				pr_err("1st block is bad. This is not supported\n");
 				ret = -EINVAL;
 				goto out;
 			}
@@ -266,7 +266,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 			*num_bb += 1;
 			if (*num_bb == 425) {
 				/* Maximum number of bad blocks the ROM supports */
-				printf("maximum number of bad blocks reached\n");
+				pr_err("maximum number of bad blocks reached\n");
 				ret = -ENOSPC;
 				goto out;
 			}
@@ -281,7 +281,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 		block++;
 
 		if (size_available < 0) {
-			printf("device is too small");
+			pr_err("device is too small");
 			ret = -ENOSPC;
 			goto out;
 		}
@@ -292,7 +292,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 			data->len + pre_image_size + *num_bb * blocksize);
 
 	if (data->len + pre_image_size + *num_bb * blocksize > imx_handler->device_size) {
-		printf("needed space (0x%08zx) exceeds partition space (0x%08zx)\n",
+		pr_err("needed space (0x%08zx) exceeds partition space (0x%08zx)\n",
 				data->len + pre_image_size + *num_bb * blocksize,
 				imx_handler->device_size);
 		ret = -ENOSPC;
@@ -320,7 +320,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 			continue;
 		}
 
-		debug("writing %d bytes at 0x%08llx\n", now, offset);
+		pr_debug("writing %d bytes at 0x%08llx\n", now, offset);
 
 		ret = erase(fd, blocksize, offset);
 		if (ret)
@@ -367,7 +367,7 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	barker = data->image + imx_handler->flash_header_offset;
 
 	if (*barker != IVT_BARKER) {
-		printf("Board does not provide DCD data and this image is no imximage\n");
+		pr_err("Board does not provide DCD data and this image is no imximage\n");
 		return -EINVAL;
 	}
 
@@ -394,7 +394,7 @@ static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 	barker = data->image + imx_handler->flash_header_offset;
 
 	if (*barker != IVT_BARKER) {
-		printf("Board does not provide DCD data and this image is no imximage\n");
+		pr_err("Board does not provide DCD data and this image is no imximage\n");
 		return -EINVAL;
 	}
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
