Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4m-0005CX-Sb
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:47:50 +0100
Message-Id: <1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/36] i.MX25 3stack: fixup flash header to new names/layout
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/freescale-mx25-3-stack/3stack.c |   38 +++++++++++++++-----------------
 1 files changed, 18 insertions(+), 20 deletions(-)

diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
index 3a528fa..5590e55 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -34,7 +34,7 @@
 #include <mach/imx-nand.h>
 #include <fec.h>
 #include <nand.h>
-#include <mach/imx25-flash-header.h>
+#include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
 
 extern unsigned long _stext;
@@ -44,43 +44,41 @@ void __naked __flash_header_start go(void)
 	__asm__ __volatile__("b _start\n");
 }
 
-struct mx25_dcd_entry __dcd_entry dcd_entry[] = {
+struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
 	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
 	{ .ptr_type = 4, .addr = 0xb8002054, .val = 0x22252521, },
 	{ .ptr_type = 4, .addr = 0xb8002058, .val = 0x22220a00, },
 	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
 	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
-	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x12344321, },
+	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x21, },
 	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2100000, },
 	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
 	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
 	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2100000, },
-	{ .ptr_type = 1, .addr = 0x80000033, .val = 0x000000da, },
-	{ .ptr_type = 1, .addr = 0x81000000, .val = 0x000000ff, },
+	{ .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
+	{ .ptr_type = 1, .addr = 0x81000000, .val = 0xff, },
 	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216880, },
 	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x00295729, },
 	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
 };
 
-struct mx25_nand_flash_header __flash_header mx25_3ds_header = {
-	.flash_header = {
-		.app_code_jump_vector	= &_stext,
-		.app_code_barker	= APP_CODE_BARKER,
-		.app_code_csf		= NULL,
-		.dcd_ptr_ptr		= &mx25_3ds_header.flash_header.dcd,
-		.super_root_key		= NULL,
-		.dcd			= &mx25_3ds_header.dcd_header,
-		.app_dest		= (void *)TEXT_BASE,
-	},
-	.dcd_header = {
-		.barker			= DCD_BARKER,
-		.block_len		= sizeof (dcd_entry),
-	},
+#define APP_DEST	0x80000000
+
+struct imx_flash_header __flash_header_0x400 mx25_3ds_header = {
+	.app_code_jump_vector	= APP_DEST + 0x1000,
+	.app_code_barker	= APP_CODE_BARKER,
+	.app_code_csf		= 0,
+	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.super_root_key		= 0,
+	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= APP_DEST,
+	.dcd_barker		= DCD_BARKER,
+	.dcd_block_len		= sizeof (dcd_entry),
 };
 
 extern unsigned long __bss_start;
 
-unsigned long __image_len barebox_len = 0x40000;
+unsigned long __image_len_0x400 barebox_len = 0x40000;
 
 static struct fec_platform_data fec_info = {
 	.xcv_type	= RMII,
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
