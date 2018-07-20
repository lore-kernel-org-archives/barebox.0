Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgJqX-0002pd-9r
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 01:04:41 +0000
Received: by mail-pl0-x242.google.com with SMTP id w8-v6so4390184ply.8
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 18:04:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Jul 2018 18:03:53 -0700
Message-Id: <20180720010357.22822-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 08/12] ARM: i.MX: xload-esdhc: Allow placing image to align
 its etnry point
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Allow placing image to align its etnry point with a particular entry
point address. This is needed for SoC's like i.MX8M where
vendor-provided ARM Trusted Firmware blob will exit at specific
pre-determined address and we need to be able to pick execution up
form there.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/xload-esdhc.c | 39 ++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 5ce83b0bf..55d6c6929 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -14,6 +14,7 @@
 #include <common.h>
 #include <io.h>
 #include <mci.h>
+#include <mach/atf.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx8mq-regs.h>
 #include <mach/xload.h>
@@ -219,7 +220,7 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 }
 
 static int
-esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
+esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry, u32 offset)
 {
 
 	void *buf = (void *)address;
@@ -245,6 +246,35 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 
 	pr_debug("Check ok, loading image\n");
 
+	ofs = offset + hdr->entry - hdr->boot_data.start;
+
+	if (entry != address) {
+		/*
+		 * Passing entry different from address is interpreted
+		 * as a request to place the image such that its entry
+		 * point would be exactly at 'entry', that is:
+		 *
+		 *     buf + ofs = entry
+		 *
+		 * solving the above for 'buf' gvies us the
+		 * adjustement that needs to be made:
+		 *
+		 *     buf = entry - ofs
+		 *
+		 */
+		if (WARN_ON(entry - ofs < address)) {
+			/*
+			 * We want to make sure we won't try to place
+			 * the start of the image before the beginning
+			 * of the memory buffer we were given in
+			 * address.
+			 */
+			return -EINVAL;
+		}
+
+		buf = (void *)(entry - ofs);
+	}
+
 	ret = esdhc_read_blocks(esdhc, buf, offset + len);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
@@ -253,8 +283,6 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 
 	pr_debug("Image loaded successfully\n");
 
-	ofs = offset + hdr->entry - hdr->boot_data.start;
-
 	bb = buf + ofs;
 
 	bb();
@@ -295,7 +323,7 @@ int imx6_esdhc_start_image(int instance)
 
 	esdhc.is_mx6 = 1;
 
-	return esdhc_start_image(&esdhc, 0x10000000, 0);
+	return esdhc_start_image(&esdhc, 0x10000000, 0x10000000, 0);
 }
 
 /**
@@ -327,5 +355,6 @@ int imx8_esdhc_start_image(int instance)
 
 	esdhc.is_mx6 = 1;
 
-	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR, SZ_32K);
+	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR,
+				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
 }
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
