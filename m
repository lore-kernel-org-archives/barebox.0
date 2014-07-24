Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XACpR-00055O-1w
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 06:48:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jul 2014 08:48:13 +0200
Message-Id: <1406184493-29225-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406184493-29225-1-git-send-email-s.hauer@pengutronix.de>
References: <1406184493-29225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX5: internal NAND update: simplify code
To: barebox@lists.infradead.org

Allocate space for the resulting image (FCB+DBBT+Firmware) in
imx_bbu_internal_v2_write_nand_dbbt() instead of its caller to make the
code simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 33 +++++++++------------------------
 1 file changed, 9 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index d90d92b..56369a0 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -168,7 +168,7 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
  * layer.
  */
 static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *imx_handler,
-		struct bbu_data *data, void *image, int image_len)
+		struct bbu_data *data)
 {
 	struct mtd_info_user meminfo;
 	int fd;
@@ -181,6 +181,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	int dbbt_start_page = 4;
 	int firmware_start_page = 12;
 	void *dbbt_base;
+	void *image, *freep = NULL;
 	int pre_image_size;
 
 	ret = stat(data->devicefile, &s);
@@ -198,6 +199,8 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 		goto out;
 
 	pre_image_size = firmware_start_page * meminfo.writesize;
+	image = freep = xzalloc(data->len + pre_image_size);
+	memcpy(image + pre_image_size, data->image, data->len);
 
 	blocksize = meminfo.erasesize;
 
@@ -322,6 +325,7 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 
 out:
 	close(fd);
+	free(freep);
 
 	return ret;
 }
@@ -339,10 +343,7 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 {
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
-	void *imx_pre_image = NULL;
-	int imx_pre_image_size;
-	int ret, image_len;
-	void *buf;
+	int ret;
 	uint32_t *barker;
 
 	ret = imx_bbu_check_prereq(data);
@@ -356,26 +357,10 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 		return -EINVAL;
 	}
 
-	imx_pre_image_size = 0;
-
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND) {
-		/* NAND needs additional space for the DBBT */
-		imx_pre_image_size += 0x6000;
-		imx_pre_image = xzalloc(imx_pre_image_size);
-
-		/* Create a buffer containing header and image data */
-		image_len = data->len + imx_pre_image_size;
-		buf = xzalloc(image_len);
-		memcpy(buf, imx_pre_image, imx_pre_image_size);
-		memcpy(buf + imx_pre_image_size, data->image, data->len);
-
-		ret = imx_bbu_internal_v2_write_nand_dbbt(imx_handler, data, buf,
-				image_len);
-		free(buf);
-		free(imx_pre_image);
-	} else {
+	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND)
+		ret = imx_bbu_internal_v2_write_nand_dbbt(imx_handler, data);
+	else
 		ret = imx_bbu_write_device(imx_handler, data, data->image, data->len);
-	}
 
 	return ret;
 }
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
