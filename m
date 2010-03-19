Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NsZlV-0007zM-K1
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 10:49:23 +0000
Received: by wwd20 with SMTP id 20so213374wwd.36
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 03:49:15 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 19 Mar 2010 11:49:14 +0100
Message-ID: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] imx21ads nand boot
To: barebox@lists.infradead.org

Hi all,

I tried getting barebox MX21ADS to boot from NAND, but I can't get it to work.

Booting in bootstrap mode (copying the barebox image to RAM, and then
executing it from RAM) does work, and "nand_boot_test" copies the nand
image correctly to RAM.

Any clues, anyone ?



diff --git a/board/imx21ads/imx21ads.c b/board/imx21ads/imx21ads.c
index 88dcfb2..5f73fcb 100644
--- a/board/imx21ads/imx21ads.c
+++ b/board/imx21ads/imx21ads.c
@@ -148,3 +148,12 @@ static int mx21ads_console_init(void)
 }

 console_initcall(mx21ads_console_init);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+void __bare_init nand_boot(void)
+{
+        PCCR0 |= PCCR0_NFC_EN;
+	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
+}
+#endif
+
diff --git a/board/imx21ads/lowlevel_init.S b/board/imx21ads/lowlevel_init.S
index 1705d79..1d4c594 100644
--- a/board/imx21ads/lowlevel_init.S
+++ b/board/imx21ads/lowlevel_init.S
@@ -20,12 +20,13 @@
 #include <config.h>
 #include <mach/imx-regs.h>

+	.section ".text_bare_init","ax"

 .globl board_init_lowlevel
 board_init_lowlevel:

 /* Save lr, because it is overwritten by the calls to mem_delay. */
-	mov	r5, lr
+	mov	r10, lr

 /*
  * Initialize the AHB-Lite IP Interface (AIPI) module (to enable access to
@@ -71,6 +72,15 @@ board_init_lowlevel:
 	ldr	r1, =0xffffffc9
 	str	r1, [r0]

+	/* Skip SDRAM initialization if we run from RAM */
+	cmp	pc, #0xc0000000
+	bls	1f
+	cmp	pc, #0xc8000000
+	bhi	1f
+
+	mov	pc, r10
+1:
+
 	/* Precharge */
 	ldr	r0, =SDCTL0
 	ldr	r1, =0x92120300
@@ -105,7 +115,42 @@ board_init_lowlevel:
 	ldr	r1, =0x8212F339
 	str	r1, [r0]

-	mov	pc, r5
+	ldr	r0, =PCDR0
+	ldr	r1, =0x6419a007
+	str	r1, [r0]
+
+#ifdef CONFIG_NAND_IMX_BOOT
+	ldr     sp, =TEXT_BASE - 4	/* Setup a temporary stack in SDRAM */
+
+	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM        */
+	ldr	r2, =IMX_NFC_BASE + 0x800	/* end of NFC SRAM          */
+
+	/* skip NAND boot if not running from NFC space */
+	cmp	pc, r0
+	bls	ret
+	cmp	pc, r2
+	bhi	ret
+
+	/* Move ourselves out of NFC SRAM */
+	ldr	r1, =TEXT_BASE
+
+copy_loop:
+	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
+	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
+	cmp	r0, r2			/* until source end addreee [r2]    */
+	ble	copy_loop
+
+	ldr	pc, =1f			/* Jump to SDRAM                    */
+1:
+	bl	nand_boot		/* Load barebox from NAND Flash     */
+
+	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
+	sub	r10, r10, r1		/* adjust return address from NFC   */
+					/* SRAM to SDRAM                    */
+#endif /* CONFIG_NAND_IMX_BOOT */
+
+ret:
+	mov	pc, r10

 /*
  *  spin for a while.  we need to wait at least 200 usecs.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
