Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2HOF-0006Mb-4A
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 14:54:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Sep 2018 16:53:53 +0200
Message-Id: <20180918145354.30191-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX27: Fix NAND boot with newer gcc
To: Barebox List <barebox@lists.infradead.org>
Cc: Wolfram.Dold@allegion.com, =?UTF-8?q?Florian=20B=C3=A4uerle?= <florian.baeuerle@allegion.com>

This is a fix for a very weird icache problem when booting from NAND.
With a OSELAS-2018.01 toolchain imx27_barebox_boot_nand_external() is
compiled like this:

0000063c <imx27_barebox_boot_nand_external>:
     63c:	e92d4010 	push	{r4, lr}
     640:	e1a0200f 	mov	r2, pc
     644:	e282230a 	add	r2, r2, #671088640	; 0x28000000
     648:	e3520b02 	cmp	r2, #2048	; 0x800
     64c:	9a000012 	bls	69c <imx27_barebox_boot_nand_external+0x60>
     650:	eb000034 	bl	728 <imx27_barebox_entry>
     654:	e592c000 	ldr	ip, [r2]
     658:	e2822004 	add	r2, r2, #4
     65c:	e580c000 	str	ip, [r0]
     660:	e1520001 	cmp	r2, r1
     664:	e2820332 	add	r0, r2, #-939524096	; 0xc8000000
     668:	1afffff9 	bne	654 <imx27_barebox_boot_nand_external+0x18>
     66c:	e1a00003 	mov	r0, r3
     670:	e59f2034 	ldr	r2, [pc, #52]	; 6ac <imx27_barebox_boot_nand_external+0x70>
     674:	e2401376 	sub	r1, r0, #-671088639	; 0xd8000001
     678:	e59f3030 	ldr	r3, [pc, #48]	; 6b0 <imx27_barebox_boot_nand_external+0x74>
     67c:	e1510002 	cmp	r1, r2
     680:	93c004ff 	bicls	r0, r0, #-16777216	; 0xff000000
     684:	e1a03a83 	lsl	r3, r3, #21
     688:	e1a03aa3 	lsr	r3, r3, #21
     68c:	93c0073e 	bicls	r0, r0, #16252928	; 0xf80000
     690:	e283320a 	add	r3, r3, #-1610612736	; 0xa0000000
     694:	9280020a 	addls	r0, r0, #-1610612736	; 0xa0000000
     698:	e12fff33 	blx	r3
     69c:	e1a03000 	mov	r3, r0
     6a0:	e3a02336 	mov	r2, #-671088640	; 0xd8000000
     6a4:	e59f1008 	ldr	r1, [pc, #8]	; 6b4 <imx27_barebox_boot_nand_external+0x78>
     6a8:	eaffffec 	b	660 <imx27_barebox_boot_nand_external+0x24>
     6ac:	0007fffe 	.word	0x0007fffe
     6b0:	00000604 	.word	0x00000604
     6b4:	d8000800 	.word	0xd8000800

From 0x64c the code jumps to 0x69c and then back to 0x660. The jump to
0x69c triggers a icache line fetch which works fine, but then when the
function continues and the code enters the same instruction cache line
at 0x680 again then only garbage is executed, most of the time we end up
in an endless loop and the CPU jumps back somewhere at the beginning of
the function.

I have carefully added nops right before the out of line code block.
When there are enough nops to move the block to the next cache line
then the code works again.

That of course is no solution to the problem. Since I am out of ideas
what the real issue is let's just disable the icache in this function
and re-enable it in the next function. This seems to solve the problem.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 17878e400b..745a129b23 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -323,10 +323,14 @@ void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
 {									\
 	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
 	void *sdram = (void *)MX##soc##_CSD0_BASE_ADDR;			\
-	uint32_t image_size;						\
+	uint32_t image_size, r;						\
 									\
 	image_size = *(uint32_t *)(sdram + 0x2c);			\
 									\
+	r = get_cr();							\
+	r |= CR_I;							\
+	set_cr(r);							\
+									\
 	imx##soc##_nand_load_image(sdram,				\
 			image_size,					\
 			(void *)nfc_base,				\
@@ -347,6 +351,9 @@ void __noreturn BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external) \
 	int i;								\
 	void __noreturn (*fn)(void *);					\
 									\
+	r = get_cr();							\
+	r &= ~CR_I;							\
+	set_cr(r);							\
 	/* skip NAND boot if not running from NFC space */		\
 	r = get_pc();							\
 	if (r < nfc_base || r > nfc_base + 0x800)			\
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
