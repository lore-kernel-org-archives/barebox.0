Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwUda-0003i7-4o
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:55:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2013 11:54:42 +0200
Message-Id: <1373363682-24449-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: i.MX: External Nand boot: remove ifdefs around SoC
 functions
To: barebox@lists.infradead.org

The ifdefs around the SoC specific boot_nand_external functions
can be removed when all functions go into their own sections so
that the linker can discard the unused functions.

This also adds a #ifdef BROKEN around the i.MX21 code which currently
does not have the imx21_barebox_entry function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 7280b5b..b0aeb43 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -276,14 +276,18 @@ int __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 	return 1;
 }
 
+#define BARE_INIT_FUNCTION(name)  \
+	void __noreturn __section(.text_bare_init_##name) \
+		name
+
 /*
  * SoC specific entries for booting in external NAND mode. To be called from
  * the board specific entry code. This is safe to call even if not booting from
  * NAND. In this case the booting is continued without loading an image from
  * NAND. This function needs a stack to be set up.
  */
-#ifdef CONFIG_ARCH_IMX21
-void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
+#ifdef BROKEN
+BARE_INIT_FUNCTION(imx21_barebox_boot_nand_external)(void)
 {
 	unsigned long nfc_base = MX21_NFC_BASE_ADDR;
 	int pagesize_2k;
@@ -301,12 +305,12 @@ void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 				(void *)nfc_base, pagesize_2k);
 	}
 
+	/* This function doesn't exist yet */
 	imx21_barebox_entry(0);
 }
 #endif
 
-#ifdef CONFIG_ARCH_IMX25
-void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
+BARE_INIT_FUNCTION(imx25_barebox_boot_nand_external)(void)
 {
 	unsigned long nfc_base = MX25_NFC_BASE_ADDR;
 	int pagesize_2k;
@@ -326,10 +330,8 @@ void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 
 	imx25_barebox_entry(0);
 }
-#endif
 
-#ifdef CONFIG_ARCH_IMX27
-void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
+BARE_INIT_FUNCTION(imx27_barebox_boot_nand_external)(void)
 {
 	unsigned long nfc_base = MX27_NFC_BASE_ADDR;
 	int pagesize_2k;
@@ -349,10 +351,8 @@ void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 
 	imx27_barebox_entry(0);
 }
-#endif
 
-#ifdef CONFIG_ARCH_IMX31
-void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
+BARE_INIT_FUNCTION(imx31_barebox_boot_nand_external)(void)
 {
 	unsigned long nfc_base = MX31_NFC_BASE_ADDR;
 	int pagesize_2k;
@@ -372,10 +372,8 @@ void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 
 	imx31_barebox_entry(0);
 }
-#endif
 
-#ifdef CONFIG_ARCH_IMX35
-void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
+BARE_INIT_FUNCTION(imx35_barebox_boot_nand_external)(void)
 {
 	unsigned long nfc_base = MX35_NFC_BASE_ADDR;
 	int pagesize_2k;
@@ -395,4 +393,3 @@ void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 
 	imx35_barebox_entry(0);
 }
-#endif
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
