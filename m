Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdeOl-0002rQ-Ov
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 09:57:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 10:57:40 +0100
Message-Id: <1354096660-14174-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354096660-14174-1-git-send-email-s.hauer@pengutronix.de>
References: <1354096660-14174-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] ARM i.MX bbu: Allow to have no DCD
To: barebox@lists.infradead.org

Some boards do not have a DCD table since they initialize everything
in code, so allow to skip it and leave the corresponding pointers
empty.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c |   22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 4300b63..05aa5f1 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -357,8 +357,9 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	flash_header->header.version = IVT_VERSION;
 
 	flash_header->entry = imx_handler->app_dest + imx_pre_image_size;
-	flash_header->dcd_ptr = imx_handler->app_dest + flash_header_offset +
-		offsetof(struct imx_flash_header_v2, dcd);
+	if (imx_handler->dcdsize)
+		flash_header->dcd_ptr = imx_handler->app_dest + flash_header_offset +
+			offsetof(struct imx_flash_header_v2, dcd);
 	flash_header->boot_data_ptr = imx_handler->app_dest +
 		flash_header_offset + offsetof(struct imx_flash_header_v2, boot_data);
 	flash_header->self = imx_handler->app_dest + flash_header_offset;
@@ -366,10 +367,12 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	flash_header->boot_data.start = imx_handler->app_dest;
 	flash_header->boot_data.size = ALIGN(imx_pre_image_size + data->len, 4096);;
 
-	flash_header->dcd.header.tag = DCD_HEADER_TAG;
-	flash_header->dcd.header.length = cpu_to_be16(sizeof(struct imx_dcd) +
-			imx_handler->dcdsize);
-	flash_header->dcd.header.version = DCD_VERSION;
+	if (imx_handler->dcdsize) {
+		flash_header->dcd.header.tag = DCD_HEADER_TAG;
+		flash_header->dcd.header.length = cpu_to_be16(sizeof(struct imx_dcd) +
+				imx_handler->dcdsize);
+		flash_header->dcd.header.version = DCD_VERSION;
+	}
 
 	/* Add dcd data */
 	memcpy((void *)flash_header + sizeof(*flash_header), imx_handler->dcd, imx_handler->dcdsize);
@@ -482,6 +485,13 @@ static int imx53_bbu_internal_init_dcd(struct imx_internal_bbu_handler *imx_hand
 	uint32_t *dcd32 = dcd;
 
 	/*
+	 * For boards which do not have a dcd (i.e. they do their SDRAM
+	 * setup in C code)
+	 */
+	if (!dcd || !dcdsize)
+		return 0;
+
+	/*
 	 * The DCD data we have compiled in does not have a DCD_WR_CMD at
 	 * the beginning. Instead it is contained in struct imx_flash_header_v2.
 	 * This is necessary to generate the DCD size at compile time. If
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
