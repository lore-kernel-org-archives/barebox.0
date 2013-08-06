Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6hXn-0006Wy-FN
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:43:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:42:52 +0200
Message-Id: <1375796574-8759-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375796574-8759-1-git-send-email-s.hauer@pengutronix.de>
References: <1375796574-8759-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX: bbu-internal: optionally use DCD data from
 image
To: barebox@lists.infradead.org

We used to pass the DCD data from the boards. This patch allows
to optionally skip passing DCD data. In this case the DCD data
from the flash image is used if present.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 76 ++++++++++++++++++++++++------------
 1 file changed, 50 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 70b7c44..a96b110 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -337,37 +337,14 @@ out:
 	return ret;
 }
 
-/*
- * Update barebox on a v2 type internal boot (i.MX53)
- *
- * This constructs a DCD header, adds the specific DCD data and writes
- * the resulting image to the device. Currently this handles MMC/SD
- * and NAND devices.
- */
-static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_data *data)
+static void imx_bbu_internal_v2_init_flash_header(struct bbu_handler *handler, struct bbu_data *data,
+		void *imx_pre_image, int imx_pre_image_size)
 {
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	struct imx_flash_header_v2 *flash_header;
 	unsigned long flash_header_offset = imx_handler->flash_header_offset;
-	void *imx_pre_image;
-	int imx_pre_image_size;
-	int ret, image_len;
-	void *buf;
-
-	ret = imx_bbu_check_prereq(data);
-	if (ret)
-		return ret;
-
-	printf("updating to %s\n", data->devicefile);
-
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND)
-		/* NAND needs additional space for the DBBT */
-		imx_pre_image_size = 0x8000;
-	else
-		imx_pre_image_size = 0x2000;
 
-	imx_pre_image = xzalloc(imx_pre_image_size);
 	flash_header = imx_pre_image + flash_header_offset;
 
 	flash_header->header.tag = IVT_HEADER_TAG;
@@ -394,11 +371,58 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 
 	/* Add dcd data */
 	memcpy((void *)flash_header + sizeof(*flash_header), imx_handler->dcd, imx_handler->dcdsize);
+}
+
+#define IVT_BARKER		0x402000d1
+
+/*
+ * Update barebox on a v2 type internal boot (i.MX53)
+ *
+ * This constructs a DCD header, adds the specific DCD data and writes
+ * the resulting image to the device. Currently this handles MMC/SD
+ * and NAND devices.
+ */
+static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_data *data)
+{
+	struct imx_internal_bbu_handler *imx_handler =
+		container_of(handler, struct imx_internal_bbu_handler, handler);
+	void *imx_pre_image = NULL;
+	int imx_pre_image_size;
+	int ret, image_len;
+	void *buf;
+
+	ret = imx_bbu_check_prereq(data);
+	if (ret)
+		return ret;
+
+	if (imx_handler->dcd) {
+		imx_pre_image_size = 0x2000;
+	} else {
+		uint32_t *barker = data->image + imx_handler->flash_header_offset;
+
+		if (*barker != IVT_BARKER) {
+			printf("Board does not provide DCD data and this image is no imximage\n");
+			return -EINVAL;
+		}
+
+		imx_pre_image_size = 0;
+	}
+
+	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND)
+		/* NAND needs additional space for the DBBT */
+		imx_pre_image_size += 0x6000;
+
+	if (imx_pre_image_size)
+		imx_pre_image = xzalloc(imx_pre_image_size);
+
+	if (imx_handler->dcd)
+		imx_bbu_internal_v2_init_flash_header(handler, data, imx_pre_image, imx_pre_image_size);
 
 	/* Create a buffer containing header and image data */
 	image_len = data->len + imx_pre_image_size;
 	buf = xzalloc(image_len);
-	memcpy(buf, imx_pre_image, imx_pre_image_size);
+	if (imx_pre_image_size)
+		memcpy(buf, imx_pre_image, imx_pre_image_size);
 	memcpy(buf + imx_pre_image_size, data->image, data->len);
 
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND) {
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
