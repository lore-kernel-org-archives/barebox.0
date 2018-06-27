Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXyt5-0000H5-7t
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 01:04:51 +0000
Received: by mail-pl0-x244.google.com with SMTP id k1-v6so177914plt.2
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 18:04:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 18:04:11 -0700
Message-Id: <20180627010412.20646-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180627010412.20646-1-andrew.smirnov@gmail.com>
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 09/10] ARM: i.MX: bbu: Make struct imx_internal_bbu_handler
 public
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make struct imx_internal_bbu_handler public, so it would be possible
to access some of its parameters in board specific code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 30 +++++++++++-----------------
 arch/arm/mach-imx/include/mach/bbu.h | 13 ++++++++++++
 2 files changed, 25 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 8c44d601d..1dde65a0c 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -38,13 +38,6 @@
 #define IMX_INTERNAL_FLAG_KEEP_DOSPART	(1 << 1)
 #define IMX_INTERNAL_FLAG_ERASE		(1 << 2)
 
-struct imx_internal_bbu_handler {
-	struct bbu_handler handler;
-	unsigned long flash_header_offset;
-	size_t device_size;
-	unsigned long flags;
-};
-
 /*
  * Actually write an image to the target device, eventually keeping a
  * DOS partition table on the device
@@ -168,8 +161,6 @@ static int imx_bbu_check_prereq(const char *devicefile, struct bbu_data *data)
  */
 int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_data *data)
 {
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
 
 	ret = imx_bbu_check_prereq(data->devicefile, data);
@@ -178,7 +169,9 @@ int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_data *dat
 
 	pr_info("updating to %s\n", data->devicefile);
 
-	ret = imx_bbu_write_device(imx_handler, data->devicefile, data, data->image, data->len);
+	ret = imx_bbu_write_device(to_imx_internal_bbu_hander(handler),
+				   data->devicefile, data, data->image,
+				   data->len);
 
 	return ret;
 }
@@ -365,11 +358,12 @@ out:
  */
 static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_data *data)
 {
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
+	struct imx_internal_bbu_handler *imx_handler;
 	int ret;
 	const uint32_t *barker;
 
+	imx_handler = to_imx_internal_bbu_hander(handler);
+
 	ret = imx_bbu_check_prereq(data->devicefile, data);
 	if (ret)
 		return ret;
@@ -393,14 +387,15 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 					      struct bbu_data *data)
 {
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
+	struct imx_internal_bbu_handler *imx_handler;
 	int ret;
 	const uint32_t *barker;
 	char *bootpartvar;
 	const char *bootpart;
 	char *devicefile;
 
+	imx_handler = to_imx_internal_bbu_hander(handler);
+
 	barker = data->image + imx_handler->flash_header_offset;
 
 	if (*barker != IVT_BARKER) {
@@ -445,16 +440,15 @@ free_bootpartvar:
 
 static int imx_bbu_external_update(struct bbu_handler *handler, struct bbu_data *data)
 {
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
 
 	ret = imx_bbu_check_prereq(data->devicefile, data);
 	if (ret)
 		return ret;
 
-	return imx_bbu_write_device(imx_handler, data->devicefile, data,
-				    data->image, data->len);
+	return imx_bbu_write_device(to_imx_internal_bbu_hander(handler),
+				    data->devicefile, data, data->image,
+				    data->len);
 }
 
 static struct imx_internal_bbu_handler *__init_handler(const char *name, char *devicefile,
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 04be8cea5..5c3349d98 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -4,6 +4,19 @@
 #include <bbu.h>
 #include <errno.h>
 
+struct imx_internal_bbu_handler {
+	struct bbu_handler handler;
+	unsigned long flash_header_offset;
+	size_t device_size;
+	unsigned long flags;
+};
+
+static inline struct imx_internal_bbu_handler *
+to_imx_internal_bbu_hander(struct bbu_handler *handler)
+{
+	return container_of(handler, struct imx_internal_bbu_handler, handler);
+}
+
 struct imx_dcd_entry;
 struct imx_dcd_v2_entry;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
