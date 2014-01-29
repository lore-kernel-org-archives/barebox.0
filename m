Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8Sxa-0006g2-Oc
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 11:05:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 12:05:08 +0100
Message-Id: <1390993508-10287-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390993508-10287-1-git-send-email-s.hauer@pengutronix.de>
References: <1390993508-10287-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX: external NAND boot: use image size from image
 header
To: barebox@lists.infradead.org

When compiling with multiimage support ld_var(_barebox_image_size) only
contains the length of the PBL image, but not including the appended
compressed data. With this patch the image size is read from the barebox
header instead which contains the correct size, either from the linker
or from the fix_size tool.
This makes the external_nand_boot compatible with multiimage support.

Tested on Phytec phyCARD-i.MX27 with and without PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index fab37bf..c08806c 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -322,10 +322,13 @@ void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
 			(uint32_t boarddata)				\
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
-	unsigned long sdram = MX##soc##_CSD0_BASE_ADDR;			\
+	void *sdram = (void *)MX##soc##_CSD0_BASE_ADDR;			\
+	uint32_t image_size;						\
+									\
+	image_size = *(uint32_t *)(sdram + 0x2c);			\
 									\
-	imx##soc##_nand_load_image((void *)sdram,			\
-			ld_var(_barebox_image_size),			\
+	imx##soc##_nand_load_image(sdram,				\
+			image_size,					\
 			(void *)nfc_base,				\
 			imx##soc##_pagesize_2k());			\
 									\
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
