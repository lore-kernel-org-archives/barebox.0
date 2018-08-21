Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07p-00007r-Rf
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:55 +0000
Received: by mail-pl0-x242.google.com with SMTP id x6-v6so8294977plv.10
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 12/22] ARM: i.MX: bbu: Move protect code into a separate
 routine
Date: Mon, 20 Aug 2018 23:25:53 -0700
Message-Id: <20180821062603.17393-13-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both code sections responsible for enabling/disabling underlying
device write protection are almost identical to each other. To avoid
code duplication move them into a separate routine and adjust the rest
of the code accordignly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 62 +++++++++++++++++++---------
 1 file changed, 42 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 318efd88e..eb1c459b2 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -44,6 +44,41 @@ struct imx_internal_bbu_handler {
 	enum filetype expected_type;
 };
 
+static bool
+imx_bbu_erase_required(struct imx_internal_bbu_handler *imx_handler)
+{
+	return imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE;
+}
+
+static int imx_bbu_protect(int fd, struct imx_internal_bbu_handler *imx_handler,
+			   const char *devicefile, int offset, int image_len,
+			   int prot)
+{
+	const char *prefix = prot ? "" : "un";
+	int ret;
+
+	if (!imx_bbu_erase_required(imx_handler))
+		return 0;
+
+	pr_debug("%s: %sprotecting %s from 0x%08x to 0x%08x\n", __func__,
+		 prefix, devicefile, offset, image_len);
+
+	ret = protect(fd, image_len, offset, prot);
+	if (ret) {
+		/*
+		 * If protect() is not implemented for this device,
+		 * just report success
+		 */
+		if (ret == -ENOSYS)
+			return 0;
+
+		pr_err("%sprotecting %s failed with %s\n", prefix, devicefile,
+		       strerror(-ret));
+	}
+
+	return ret;
+}
+
 /*
  * Actually write an image to the target device, eventually keeping a
  * DOS partition table on the device
@@ -67,16 +102,12 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (imx_handler->handler.flags & IMX_BBU_FLAG_KEEP_HEAD)
 		offset += imx_handler->flash_header_offset;
 
-	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE) {
-		pr_debug("%s: unprotecting %s from 0x%08x to 0x%08x\n", __func__,
-				devicefile, offset, image_len);
-		ret = protect(fd, image_len, offset, 0);
-		if (ret && ret != -ENOSYS) {
-			pr_err("unprotecting %s failed with %s\n", devicefile,
-					strerror(-ret));
-			goto err_close;
-		}
+	ret = imx_bbu_protect(fd, imx_handler, devicefile, offset,
+			      image_len, 0);
+	if (ret)
+		goto err_close;
 
+	if (imx_bbu_erase_required(imx_handler)) {
 		pr_debug("%s: erasing %s from 0x%08x to 0x%08x\n", __func__,
 				devicefile, offset, image_len);
 		ret = erase(fd, image_len, offset);
@@ -91,17 +122,8 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (ret < 0)
 		goto err_close;
 
-	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE) {
-		pr_debug("%s: protecting %s from 0x%08x to 0x%08x\n", __func__,
-				devicefile, offset, image_len);
-		ret = protect(fd, image_len, offset, 1);
-		if (ret && ret != -ENOSYS) {
-			pr_err("protecting %s failed with %s\n", devicefile,
-					strerror(-ret));
-		}
-	}
-
-	ret = 0;
+	imx_bbu_protect(fd, imx_handler, devicefile, offset,
+			image_len, 1);
 
 err_close:
 	close(fd);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
