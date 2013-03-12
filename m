Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFLWy-0004wK-Tx
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 09:30:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Mar 2013 10:29:54 +0100
Message-Id: <1363080597-10510-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
References: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: i.MX: external nand boot: check for bad blocks
To: barebox@lists.infradead.org

The i.MX external NAND boot code checks for a bad block every
page, which is wrong. Instead, check for a bad block at the
beginning of each block.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 39 +++++++++++++++++++++++-----------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 73c4ccd..bfefa3c 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -154,6 +154,14 @@ static int __maybe_unused is_pagesize_2k(void)
 #endif
 }
 
+static noinline void __bare_init imx_nandboot_get_page(void *regs,
+		u32 offs, int pagesize_2k)
+{
+	imx_nandboot_send_cmd(regs, NAND_CMD_READ0);
+	imx_nandboot_nfc_addr(regs, offs, pagesize_2k);
+	imx_nandboot_send_page(regs, NFC_OUTPUT, pagesize_2k);
+}
+
 void __bare_init imx_nand_load_image(void *dest, int size)
 {
 	u32 tmp, page, block, blocksize, pagesize;
@@ -227,26 +235,33 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 
 	while (1) {
 		page = 0;
+
+		imx_nandboot_get_page(regs, block * blocksize +
+				page * pagesize, pagesize_2k);
+
+		if (pagesize_2k) {
+			if ((readw(spare0) & 0xff) != 0xff) {
+				block++;
+				continue;
+			}
+		} else {
+			if ((readw(spare0 + 4) & 0xff00) != 0xff00) {
+				block++;
+				continue;
+			}
+		}
+
 		while (page * pagesize < blocksize) {
 			debug("page: %d block: %d dest: %p src "
 					"0x%08x\n",
 					page, block, dest,
 					block * blocksize +
 					page * pagesize);
-
-			imx_nandboot_send_cmd(regs, NAND_CMD_READ0);
-			imx_nandboot_nfc_addr(regs, block * blocksize +
+			if (page)
+				imx_nandboot_get_page(regs, block * blocksize +
 					page * pagesize, pagesize_2k);
-			imx_nandboot_send_page(regs, NFC_OUTPUT, pagesize_2k);
-			page++;
 
-			if (pagesize_2k) {
-				if ((readw(spare0) & 0xff) != 0xff)
-					continue;
-			} else {
-				if ((readw(spare0 + 4) & 0xff00) != 0xff00)
-					continue;
-			}
+			page++;
 
 			__memcpy32(dest, base, pagesize);
 			dest += pagesize;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
