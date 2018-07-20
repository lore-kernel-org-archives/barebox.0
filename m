Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgJqQ-0002pS-7C
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 01:04:34 +0000
Received: by mail-pg1-x543.google.com with SMTP id n7-v6so5280156pgq.4
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 18:04:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Jul 2018 18:03:52 -0700
Message-Id: <20180720010357.22822-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180720010357.22822-1-andrew.smirnov@gmail.com>
References: <20180720010357.22822-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/12] ARM: i.MX: xload-esdhc: Make use of
 <mach/imx-header.h>
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert esdhc_start_image() to use constants and data types from
<mach/imx-header.h>. Also, while at it, define a simple inline
function to test if an arbitrary binary blob is i.MX flash header v2.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx-header.h | 10 ++++++++++
 arch/arm/mach-imx/xload-esdhc.c             | 14 +++++++++-----
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
index 4fedba7ad..c9b2a5881 100644
--- a/arch/arm/mach-imx/include/mach/imx-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -1,6 +1,8 @@
 #ifndef __IMX_HEADER_H__
 #define __IMX_HEADER_H__
 
+#include <linux/types.h>
+
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
 
 /*
@@ -66,6 +68,14 @@ struct imx_flash_header_v2 {
 	struct imx_ivt_header dcd_header;
 } __attribute__((packed));
 
+static inline bool is_imx_flash_header_v2(const void *blob)
+{
+	const struct imx_flash_header_v2 *hdr = blob;
+
+	return  hdr->header.tag == TAG_IVT_HEADER &&
+		hdr->header.version >= IVT_VERSION;
+}
+
 struct config_data {
 	uint32_t image_load_addr;
 	uint32_t image_dcd_offset;
diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 08ba9b08d..5ce83b0bf 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -18,6 +18,7 @@
 #include <mach/imx8mq-regs.h>
 #include <mach/xload.h>
 #include <linux/sizes.h>
+#include <mach/imx-header.h>
 #include "../../../drivers/mci/sdhci.h"
 #include "../../../drivers/mci/imx-esdhc.h"
 
@@ -220,8 +221,9 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 static int
 esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 {
+
 	void *buf = (void *)address;
-	u32 *ivt = buf + offset + SZ_1K;
+	struct imx_flash_header_v2 *hdr = buf + offset + SZ_1K;
 	int ret, len;
 	void __noreturn (*bb)(void);
 	unsigned int ofs;
@@ -233,9 +235,11 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 	if (ret)
 		return ret;
 
-	if (*(u32 *)(ivt) != 0x402000d1) {
-		pr_debug("IVT header not found on SD card. Found 0x%08x instead of 0x402000d1\n",
-				*ivt);
+	if (!is_imx_flash_header_v2(hdr)) {
+		pr_debug("IVT header not found on SD card. "
+			 "Found tag: 0x%02x length: 0x%04x version: %02x\n",
+			 hdr->header.tag, hdr->header.length,
+			 hdr->header.version);
 		return -EINVAL;
 	}
 
@@ -249,7 +253,7 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 
 	pr_debug("Image loaded successfully\n");
 
-	ofs = offset + *(ivt + 1) - *(ivt + 8);
+	ofs = offset + hdr->entry - hdr->boot_data.start;
 
 	bb = buf + ofs;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
