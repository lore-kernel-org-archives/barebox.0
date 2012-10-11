Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Q6-U3
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:34 +0200
Message-Id: <1349939621-17793-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/13] ARM i.MX external nand boot: Use SoC specific base
 addresses
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c |   16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 7cf2a07..7fed26f 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -169,7 +169,21 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 		blocksize = 16 * 1024;
 	}
 
-	base = (void __iomem *)IMX_NFC_BASE;
+#ifdef CONFIG_ARCH_IMX21
+	base = (void __iomem *)MX21_NFC_BASE_ADDR;
+#endif
+#ifdef CONFIG_ARCH_IMX25
+	base = (void __iomem *)MX25_NFC_BASE_ADDR;
+#endif
+#ifdef CONFIG_ARCH_IMX27
+	base = (void __iomem *)MX27_NFC_BASE_ADDR;
+#endif
+#ifdef CONFIG_ARCH_IMX31
+	base = (void __iomem *)MX31_NFC_BASE_ADDR;
+#endif
+#ifdef CONFIG_ARCH_IMX35
+	base = (void __iomem *)MX35_NFC_BASE_ADDR;
+#endif
 	if (nfc_is_v21()) {
 		regs = base + 0x1e00;
 		spare0 = base + 0x1000;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
