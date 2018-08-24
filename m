Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E1-0005NY-Eg
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:29 +0000
Received: by mail-pl1-x62b.google.com with SMTP id s17-v6so441466plp.7
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:24 -0700
Message-Id: <20180824025243.19479-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/24] ARM: i.MX: bbu: Move inner-image type check
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since imx_bbu_check_prereq() already uses file_detect_type() and we've
extended it to understand i.MX boot image file type, we can simplify a
bunch of repetitive code as follows:

    1. Convert all checks from IVT_BARKER to filetype_imx_image_v2
       check

    2. Move all of the checking to be a part of imx_bbu_check_prereq()

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 68 ++++++++++++++++++----------
 1 file changed, 43 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 67ae2961c..b334fe3d8 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -106,11 +106,43 @@ err_close:
 	return ret;
 }
 
-static int imx_bbu_check_prereq(const char *devicefile, struct bbu_data *data)
+static int imx_bbu_check_prereq(struct imx_internal_bbu_handler *imx_handler,
+				const char *devicefile, struct bbu_data *data,
+				enum filetype expected_type)
 {
 	int ret;
-
-	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
+	const void *blob;
+	size_t len;
+	enum filetype type;
+
+	type = file_detect_type(data->image, data->len);
+
+	switch (type) {
+	case filetype_arm_barebox:
+		/*
+		 * Specifying expected_type as unknown will disable the
+		 * inner image type check.
+		 *
+		 * The only user of this code is
+		 * imx_bbu_external_nor_register_handler() used by
+		 * i.MX27.
+		 */
+		if (expected_type == filetype_unknown)
+			break;
+
+		blob = data->image + imx_handler->flash_header_offset;
+		len  = data->len   - imx_handler->flash_header_offset;
+		type = file_detect_type(blob, len);
+
+		if (type != expected_type) {
+			pr_err("Expected image type: %s, "
+			       "detected image type: %s\n",
+			       file_type_to_string(expected_type),
+			       file_type_to_string(type));
+			return -EINVAL;
+		}
+		break;
+	default:
 		if (!bbu_force(data, "Not an ARM barebox image"))
 			return -EINVAL;
 	}
@@ -137,7 +169,8 @@ static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_da
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
 
-	ret = imx_bbu_check_prereq(data->devicefile, data);
+	ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
+				   filetype_imx_image_v1);
 	if (ret)
 		return ret;
 
@@ -319,8 +352,6 @@ out:
 	return ret;
 }
 
-#define IVT_BARKER		0x402000d1
-
 /*
  * Update barebox on a v2 type internal boot (i.MX53)
  *
@@ -333,19 +364,12 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
-	const uint32_t *barker;
 
-	ret = imx_bbu_check_prereq(data->devicefile, data);
+	ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
+				   filetype_imx_image_v2);
 	if (ret)
 		return ret;
 
-	barker = data->image + imx_handler->flash_header_offset;
-
-	if (*barker != IVT_BARKER) {
-		pr_err("Board does not provide DCD data and this image is no imximage\n");
-		return -EINVAL;
-	}
-
 	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_NAND)
 		ret = imx_bbu_internal_v2_write_nand_dbbt(imx_handler, data);
 	else
@@ -361,18 +385,10 @@ static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
-	const uint32_t *barker;
 	char *bootpartvar;
 	const char *bootpart;
 	char *devicefile;
 
-	barker = data->image + imx_handler->flash_header_offset;
-
-	if (*barker != IVT_BARKER) {
-		pr_err("Board does not provide DCD data and this image is no imximage\n");
-		return -EINVAL;
-	}
-
 	ret = asprintf(&bootpartvar, "%s.boot", data->devicefile);
 	if (ret < 0)
 		return ret;
@@ -389,7 +405,8 @@ static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 	if (ret < 0)
 		goto free_bootpartvar;
 
-	ret = imx_bbu_check_prereq(devicefile, data);
+	ret = imx_bbu_check_prereq(imx_handler, devicefile, data,
+				   filetype_imx_image_v2);
 	if (ret)
 		goto free_devicefile;
 
@@ -414,7 +431,8 @@ static int imx_bbu_external_update(struct bbu_handler *handler, struct bbu_data
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
 
-	ret = imx_bbu_check_prereq(data->devicefile, data);
+	ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
+				   filetype_unknown);
 	if (ret)
 		return ret;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
