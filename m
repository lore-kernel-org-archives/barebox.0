Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.176.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBr2I-0000qJ-OV
 for barebox@lists.infradead.org; Sun, 25 Mar 2012 17:15:24 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 25 Mar 2012 21:15:16 +0400
Message-Id: <1332695716-6959-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] i.MX27: Export boot source to magic variables
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/boot.c |   27 ++++++++++++++++++++++++++-
 1 files changed, 26 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 8b82655..9f2def6 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -86,9 +86,34 @@ static int imx_25_35_boot_save_loc(void)
 
 	return 0;
 }
-
 coredevice_initcall(imx_25_35_boot_save_loc);
 
 BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
+#endif
+
+#if defined(CONFIG_ARCH_IMX27)
+static int imx_27_boot_save_loc(void)
+{
+	switch ((GPCR & GPCR_BOOT_MASK) >> GPCR_BOOT_SHIFT) {
+	case GPCR_BOOT_UART_USB:
+		setenv("barebox_loc", "serial");
+		break;
+	case GPCR_BOOT_8BIT_NAND_2k:
+	case GPCR_BOOT_16BIT_NAND_2k:
+	case GPCR_BOOT_16BIT_NAND_512:
+	case GPCR_BOOT_8BIT_NAND_512:
+		setenv("barebox_loc", "nand");
+		break;
+	default:
+		setenv("barebox_loc", "nor");
+		break;
+	}
 
+	export("barebox_loc");
+
+	return 0;
+}
+coredevice_initcall(imx_27_boot_save_loc);
+
+BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
 #endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
