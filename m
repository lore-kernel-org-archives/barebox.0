Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axh-0003Is-1X
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:21 +0100
Message-Id: <1389971012-22977-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/22] ARM: i.MX: external NAND boot: make it work with
 relocatable PBL
To: barebox@lists.infradead.org

We used to copy the initial binary portion from NFC SRAM to TEXT_BASE
and jumped there. With relocatable PBL TEXT_BASE becomes 0, so this
doesn't work. This is changed to copy the initial binary portion
to the beginning of SDRAM instead.

Tested on Phytec phyCARD-i.MX27 and Karo TX25 with and without
relocatable pbl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 71 +++++++++++++++++++++-------------
 1 file changed, 45 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 4d86ab9..a1956f0 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -236,24 +236,6 @@ void __bare_init imx_nand_load_image(void *dest, int size, void __iomem *base,
 }
 
 /*
- * This function assumes the currently running binary has been
- * copied from its current position to an offset. It returns
- * to the calling function - offset.
- * NOTE: The calling function may not return itself since it still
- * works on the old content of the lr register. Only call this
- * from a __noreturn function.
- */
-static __bare_init __naked void jump_sdram(unsigned long offset)
-{
-	flush_icache();
-
-	__asm__ __volatile__ (
-			"sub lr, lr, %0;"
-			"mov pc, lr;" : : "r"(offset)
-			);
-}
-
-/*
  * Load and start barebox from NAND. This function also checks if we are really
  * running inside the NFC address space. If not, barebox is started from the
  * currently running address without loading anything from NAND.
@@ -332,20 +314,57 @@ static inline int imx35_pagesize_2k(void)
 
 #define DEFINE_EXTERNAL_NAND_ENTRY(soc)					\
 									\
+BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)(void)		\
+{									\
+	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
+	unsigned long sdram = MX##soc##_CSD0_BASE_ADDR;			\
+									\
+	imx_nand_load_image((void *)sdram,				\
+			ld_var(_barebox_image_size),			\
+			(void *)nfc_base,				\
+			imx##soc##_pagesize_2k());			\
+									\
+        imx##soc##_barebox_entry(0);					\
+}									\
+									\
 BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external)(void)		\
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
+	unsigned long sdram = MX##soc##_CSD0_BASE_ADDR;			\
+	unsigned long __fn;						\
+	u32 r;								\
+	u32 *src, *trg;							\
+	int i;								\
+	void __noreturn (*fn)(void);					\
+									\
+	/* skip NAND boot if not running from NFC space */		\
+	r = get_pc();							\
+	if (r < nfc_base || r > nfc_base + 0x800)			\
+		imx##soc##_barebox_entry(0);				\
+									\
+	src = (unsigned int *)nfc_base;					\
+	trg = (unsigned int *)sdram;					\
+									\
+	/*								\
+	 * Copy initial binary portion from NFC SRAM to beginning of	\
+	 * SDRAM							\
+	 */								\
+	for (i = 0; i < 0x800 / sizeof(int); i++)			\
+		*trg++ = *src++;					\
 									\
-	if (imx_barebox_boot_nand_external(nfc_base)) {			\
-		jump_sdram(nfc_base - ld_var(_text));			\
+	/* The next function we jump to */				\
+	__fn = (unsigned long)imx##soc##_boot_nand_external_cont;	\
+	/* mask out TEXT_BASE */					\
+	__fn &= 0x7ff;							\
+	/*								\
+	 * and add sdram base instead where we copied the initial	\
+	 * binary above							\
+	 */								\
+	__fn += sdram;							\
 									\
-		imx_nand_load_image((void *)ld_var(_text),		\
-				ld_var(_barebox_image_size),		\
-				(void *)nfc_base,			\
-				imx##soc##_pagesize_2k());		\
-	}								\
+	fn = (void *)__fn;						\
 									\
-	imx##soc##_barebox_entry(0);					\
+	fn();								\
 }
 
 #ifdef BROKEN
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
