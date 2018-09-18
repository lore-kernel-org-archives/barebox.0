Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPC-0002B8-Qe
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:23:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id k19-v6so1687165pfi.1
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:22:55 -0700
Message-Id: <20180918222305.6834-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180918222305.6834-1-andrew.smirnov@gmail.com>
References: <20180918222305.6834-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/11] ARM: i.MX: bbu: Add support for v1 header to MMC boot
 handler
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert imx_bbu_internal_v2_mmcboot_update() to use imx_bbu_update()
for actual update in order to be able to support v1 as well as v2
headers. While at it rename the function to
imx_bbu_internal_mmcboot_update() to reflect that change.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 32 +++++++++++++++-------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 504e359bc..a283b7c5c 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -401,11 +401,10 @@ static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 	return imx_handler->write_device(imx_handler, data);
 }
 
-static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
-					      struct bbu_data *data)
+static int imx_bbu_internal_mmcboot_update(struct bbu_handler *handler,
+					   struct bbu_data *data)
 {
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
+	struct bbu_data _data = *data;
 	int ret;
 	char *bootpartvar;
 	const char *bootpart;
@@ -427,16 +426,14 @@ static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 	if (ret < 0)
 		goto free_bootpartvar;
 
-	ret = imx_bbu_check_prereq(imx_handler, devicefile, data,
-				   filetype_imx_image_v2);
+	_data.devicefile = devicefile;
+
+	ret = imx_bbu_update(handler, &_data);
 	if (ret)
 		goto free_devicefile;
 
-	ret = imx_bbu_write_device(imx_handler, devicefile, data, data->image, data->len);
-
-	if (!ret)
-		/* on success switch boot source */
-		ret = setenv(bootpartvar, bootpart);
+	/* on success switch boot source */
+	ret = setenv(bootpartvar, bootpart);
 
 free_devicefile:
 	free(devicefile);
@@ -586,20 +583,25 @@ int imx8mq_bbu_internal_mmc_register_handler(const char *name,
  * Note that no further partitioning of the boot partition is supported up to
  * now.
  */
-int imx6_bbu_internal_mmcboot_register_handler(const char *name,
-					       const char *devicefile,
-					       unsigned long flags)
+static int imx_bbu_internal_mmcboot_register_handler(const char *name,
+						     const char *devicefile,
+						     unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags);
 	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
 
-	imx_handler->handler.handler = imx_bbu_internal_v2_mmcboot_update;
+	imx_handler->handler.handler = imx_bbu_internal_mmcboot_update;
 
 	return __register_handler(imx_handler);
 }
 
+int imx6_bbu_internal_mmcboot_register_handler(const char *name,
+					       const char *devicefile,
+					       unsigned long flags)
+	__alias(imx_bbu_internal_mmcboot_register_handler);
+
 /*
  * Register an i.MX53 internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
