Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44wK-0004a9-Qk
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:37:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:37:31 +0100
Message-Id: <20200218153732.14845-6-s.hauer@pengutronix.de>
In-Reply-To: <20200218153732.14845-1-s.hauer@pengutronix.de>
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] ARM: i.MX: external NAND boot: Leave icache disabled
To: Barebox List <barebox@lists.infradead.org>

It seems running from the NFC SRAM doesn't work with the instruction
cache enabled, it leads to corruptions on the i.MX27. We stumbled upon
this earlier and the solution at that time was to disable the
instruction cache in the NAND boot code. It is, however, more reliable
to just not enable the instruction cache in the first place.
This is not particularly nice as we have to ifdef this in generic code,
duplicate arm_cpu_lowlevel_init(), or call arm_cpu_lowlevel_init() later
when we are out of NFC SRAM. From the different bad solutions I chose
to ifdef the instruction cache away. It will be enabled later in the
common cache functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/lowlevel.S                | 2 ++
 arch/arm/mach-imx/external-nand-boot.c | 9 ---------
 2 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index 3b52644e43..203a4afc47 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -57,8 +57,10 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
 	bic	r12, r12, #(CR_M | CR_C | CR_B)
 	bic	r12, r12, #(CR_S | CR_R | CR_V)
 
+#ifndef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
 	/* enable instruction cache */
 	orr	r12, r12, #CR_I
+#endif
 
 #if __LINUX_ARM_ARCH__ >= 6
 	orr	r12, r12, #CR_U
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index de8e0ffe5d..bf683de858 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -308,12 +308,6 @@ static void BARE_INIT_FUNCTION(imx35_nand_load_image)(void)
 static void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
 			(void *boarddata)				\
 {									\
-	uint32_t r;							\
-									\
-	r = get_cr();							\
-	r |= CR_I;							\
-	set_cr(r);							\
-									\
 	imx##soc##_nand_load_image();					\
 									\
         imx##soc##_barebox_entry(boarddata);				\
@@ -331,9 +325,6 @@ void __noreturn BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external) \
 	int i;								\
 	void __noreturn (*fn)(void *);					\
 									\
-	r = get_cr();							\
-	r &= ~CR_I;							\
-	set_cr(r);							\
 	/* skip NAND boot if not running from NFC space */		\
 	r = get_pc();							\
 	if (r < nfc_base || r > nfc_base + 0x800)			\
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
