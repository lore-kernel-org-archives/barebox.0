Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwUdV-0003i2-DY
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:55:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2013 11:54:38 +0200
Message-Id: <1373363682-24449-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
References: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: i.MX: External Nand boot: make 2k support nonoptional
To: barebox@lists.infradead.org

All boards using the external nand boot code autodetect the
pagesize, so make this nonoptional to make the code simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig              | 16 ----------------
 arch/arm/mach-imx/external-nand-boot.c |  6 ------
 2 files changed, 22 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index aedefe2..e9c375b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -141,22 +141,6 @@ config ARCH_IMX_EXTERNAL_BOOT_NAND
 	prompt "Support Starting barebox from NAND"
 	depends on ARCH_IMX_EXTERNAL_BOOT
 
-choice
-	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
-	default NAND_IMX_BOOT_512_2K
-	prompt "select nand pagesize you want to support booting from"
-
-config NAND_IMX_BOOT_512
-	bool "512 byte page size"
-
-config NAND_IMX_BOOT_2K
-	bool "2048 byte page size"
-
-config NAND_IMX_BOOT_512_2K
-	bool "512 byte and 2048 byte pagesize"
-
-endchoice
-
 config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 	bool
 	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index cb2aa0b..1f35e72 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -169,13 +169,7 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 	int pagesize_2k = 1, bbt = 0;
 	void *regs, *base, *spare0;
 
-#if defined(CONFIG_NAND_IMX_BOOT_512)
-	pagesize_2k = 0;
-#elif defined(CONFIG_NAND_IMX_BOOT_2K)
-	pagesize_2k = 1;
-#else
 	pagesize_2k = is_pagesize_2k();
-#endif
 
 	if (pagesize_2k) {
 		pagesize = 2048;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
