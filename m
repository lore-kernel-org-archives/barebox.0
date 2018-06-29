Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYnDr-00058s-F7
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 06:49:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jun 2018 08:49:14 +0200
Message-Id: <20180629064914.518-2-s.hauer@pengutronix.de>
In-Reply-To: <20180629064914.518-1-s.hauer@pengutronix.de>
References: <20180629064914.518-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX bbu: support partitions starting at i.MX header
To: Barebox List <barebox@lists.infradead.org>

The i.MX header is at an offset in the boot device, usually 0x400 bytes.
This patch adds a flag to support the case that the partition the image
is written to starts at that offset rather than 0x0.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 7 +++++--
 arch/arm/mach-imx/include/mach/bbu.h | 8 ++++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 5422235b1b..23686e9d61 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -58,12 +58,15 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (fd < 0)
 		return fd;
 
-	if (imx_handler->handler.flags & IMX_BBU_FLAG_KEEP_HEAD) {
+	if (imx_handler->handler.flags & (IMX_BBU_FLAG_KEEP_HEAD |
+	    IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER)) {
 		image_len -= imx_handler->flash_header_offset;
-		offset += imx_handler->flash_header_offset;
 		buf += imx_handler->flash_header_offset;
 	}
 
+	if (imx_handler->handler.flags & IMX_BBU_FLAG_KEEP_HEAD)
+		offset += imx_handler->flash_header_offset;
+
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
 		pr_debug("%s: unprotecting %s from 0x%08x to 0x%08x\n", __func__,
 				devicefile, offset, image_len);
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index c2e875d342..19b446ed60 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -16,6 +16,14 @@ struct imx_dcd_v2_entry;
  */
 #define IMX_BBU_FLAG_KEEP_HEAD	(1 << 16)
 
+/*
+ * Set this flag when the partition the update image is written to
+ * actually starts at the offset where the i.MX flash header is expected
+ * (usually 0x400). This means for the update code that it has to skip
+ * the first 0x400 bytes of the image.
+ */
+#define IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER	(1 << 17)
+
 /*
  * The upper 16 bit of the flags passes to the below functions are reserved
  * for i.MX specific flags
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
