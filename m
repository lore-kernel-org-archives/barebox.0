Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuyti-0005bw-Ek
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:54:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:53:41 +0200
Message-Id: <1402556023-1811-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
References: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: i.MX bbu: Add update handler for external NOR boot
To: barebox@lists.infradead.org

External NOR boot only requires copying the image to NOR Flash.
This also adds (un)protecting the flash which is required for
NOR Flash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 46 +++++++++++++++++++++++++++++++++++-
 arch/arm/mach-imx/include/mach/bbu.h |  9 +++++++
 2 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c7cd5b8..125415e 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -59,7 +59,16 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		return fd;
 
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
-		debug("%s: eraseing %s from 0 to 0x%08x\n", __func__,
+		debug("%s: unprotecting %s from 0 to 0x%08x\n", __func__,
+				data->devicefile, image_len);
+		ret = protect(fd, image_len, 0, 0);
+		if (ret && ret != -ENOSYS) {
+			printf("unprotecting %s failed with %s\n", data->devicefile,
+					strerror(-ret));
+			goto err_close;
+		}
+
+		debug("%s: erasing %s from 0 to 0x%08x\n", __func__,
 				data->devicefile, image_len);
 		ret = erase(fd, image_len, 0);
 		if (ret) {
@@ -92,6 +101,16 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (ret < 0)
 		goto err_close;
 
+	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
+		debug("%s: protecting %s from 0 to 0x%08x\n", __func__,
+				data->devicefile, image_len);
+		ret = protect(fd, image_len, 0, 1);
+		if (ret && ret != -ENOSYS) {
+			printf("protecting %s failed with %s\n", data->devicefile,
+					strerror(-ret));
+		}
+	}
+
 	ret = 0;
 
 err_close:
@@ -351,6 +370,19 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	return ret;
 }
 
+static int imx_bbu_external_update(struct bbu_handler *handler, struct bbu_data *data)
+{
+	struct imx_internal_bbu_handler *imx_handler =
+		container_of(handler, struct imx_internal_bbu_handler, handler);
+	int ret;
+
+	ret = imx_bbu_check_prereq(data);
+	if (ret)
+		return ret;
+
+	return imx_bbu_write_device(imx_handler, data, data->image, data->len);
+}
+
 static struct imx_internal_bbu_handler *__init_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
@@ -484,3 +516,15 @@ int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefil
 
 	return __register_handler(imx_handler);
 }
+
+int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
+		unsigned long flags)
+{
+	struct imx_internal_bbu_handler *imx_handler;
+
+	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
+	imx_handler->handler.handler = imx_bbu_external_update;
+
+	return __register_handler(imx_handler);
+}
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index bf6c7dc..74c334a 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -29,6 +29,9 @@ int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefil
 
 int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
 
+int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
+		unsigned long flags);
+
 #else
 
 static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
@@ -71,6 +74,12 @@ static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long
 {
 	return -ENOSYS;
 }
+
+static inline int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
+		unsigned long flags)
+{
+	return -ENOSYS;
+}
 #endif
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND)
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
