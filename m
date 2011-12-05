Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXU2k-0006FH-P4
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:37:00 +0000
Date: Mon, 5 Dec 2011 09:36:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111205083652.GX27267@pengutronix.de>
References: <1322931722-23569-1-git-send-email-robert.jarzmik@free.fr>
 <1322931722-23569-2-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322931722-23569-2-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH V3 2/3] drivers/video: add PXA framebuffer support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org


Can we squash the following into the commit? While I think that the idea
of this bitfield file is worth thinking about I don't want to have it
in a pxa specific directory with CamelCase defines.

Sascha

8<------------------------------------------

[PATCH] add to pxafb

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/include/mach/bitfield.h |  113 -----------------------------
 arch/arm/mach-pxa/include/mach/regs-lcd.h |   39 +++--------
 2 files changed, 10 insertions(+), 142 deletions(-)
 delete mode 100644 arch/arm/mach-pxa/include/mach/bitfield.h

diff --git a/arch/arm/mach-pxa/include/mach/bitfield.h b/arch/arm/mach-pxa/include/mach/bitfield.h
deleted file mode 100644
index f1f0e33..0000000
--- a/arch/arm/mach-pxa/include/mach/bitfield.h
+++ /dev/null
@@ -1,113 +0,0 @@
-/*
- *	FILE    	bitfield.h
- *
- *	Version 	1.1
- *	Author  	Copyright (c) Marc A. Viredaz, 1998
- *	        	DEC Western Research Laboratory, Palo Alto, CA
- *	Date    	April 1998 (April 1997)
- *	System  	Advanced RISC Machine (ARM)
- *	Language	C or ARM Assembly
- *	Purpose 	Definition of macros to operate on bit fields.
- */
-
-
-
-#ifndef __BITFIELD_H
-#define __BITFIELD_H
-
-#ifndef __ASSEMBLY__
-#define UData(Data)	((unsigned long) (Data))
-#else
-#define UData(Data)	(Data)
-#endif
-
-
-/*
- * MACRO: Fld
- *
- * Purpose
- *    The macro "Fld" encodes a bit field, given its size and its shift value
- *    with respect to bit 0.
- *
- * Note
- *    A more intuitive way to encode bit fields would have been to use their
- *    mask. However, extracting size and shift value information from a bit
- *    field's mask is cumbersome and might break the assembler (255-character
- *    line-size limit).
- *
- * Input
- *    Size      	Size of the bit field, in number of bits.
- *    Shft      	Shift value of the bit field with respect to bit 0.
- *
- * Output
- *    Fld       	Encoded bit field.
- */
-
-#define Fld(Size, Shft)	(((Size) << 16) + (Shft))
-
-
-/*
- * MACROS: FSize, FShft, FMsk, FAlnMsk, F1stBit
- *
- * Purpose
- *    The macros "FSize", "FShft", "FMsk", "FAlnMsk", and "F1stBit" return
- *    the size, shift value, mask, aligned mask, and first bit of a
- *    bit field.
- *
- * Input
- *    Field     	Encoded bit field (using the macro "Fld").
- *
- * Output
- *    FSize     	Size of the bit field, in number of bits.
- *    FShft     	Shift value of the bit field with respect to bit 0.
- *    FMsk      	Mask for the bit field.
- *    FAlnMsk   	Mask for the bit field, aligned on bit 0.
- *    F1stBit   	First bit of the bit field.
- */
-
-#define FSize(Field)	((Field) >> 16)
-#define FShft(Field)	((Field) & 0x0000FFFF)
-#define FMsk(Field)	(((UData (1) << FSize (Field)) - 1) << FShft (Field))
-#define FAlnMsk(Field)	((UData (1) << FSize (Field)) - 1)
-#define F1stBit(Field)	(UData (1) << FShft (Field))
-
-
-/*
- * MACRO: FInsrt
- *
- * Purpose
- *    The macro "FInsrt" inserts a value into a bit field by shifting the
- *    former appropriately.
- *
- * Input
- *    Value     	Bit-field value.
- *    Field     	Encoded bit field (using the macro "Fld").
- *
- * Output
- *    FInsrt    	Bit-field value positioned appropriately.
- */
-
-#define FInsrt(Value, Field) \
-                	(UData (Value) << FShft (Field))
-
-
-/*
- * MACRO: FExtr
- *
- * Purpose
- *    The macro "FExtr" extracts the value of a bit field by masking and
- *    shifting it appropriately.
- *
- * Input
- *    Data      	Data containing the bit-field to be extracted.
- *    Field     	Encoded bit field (using the macro "Fld").
- *
- * Output
- *    FExtr     	Bit-field value.
- */
-
-#define FExtr(Data, Field) \
-                	((UData (Data) >> FShft (Field)) & FAlnMsk (Field))
-
-
-#endif /* __BITFIELD_H */
diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/arch/arm/mach-pxa/include/mach/regs-lcd.h
index 0b03eac..3adb8b1 100644
--- a/arch/arm/mach-pxa/include/mach/regs-lcd.h
+++ b/arch/arm/mach-pxa/include/mach/regs-lcd.h
@@ -1,8 +1,6 @@
 #ifndef __ASM_ARCH_REGS_LCD_H
 #define __ASM_ARCH_REGS_LCD_H
 
-#include <mach/bitfield.h>
-
 /*
  * LCD Controller Registers and Bits Definitions
  */
@@ -85,29 +83,14 @@
 #define LCCR0_OUC	(1 << 25)	/* Overlay Underlay control bit */
 #define LCCR0_LDDALT	(1 << 26)	/* LDD alternate mapping control */
 
-#define LCCR1_PPL	Fld (10, 0)	/* Pixels Per Line - 1 */
-#define LCCR1_DisWdth(Pixel)	(((Pixel) - 1) << FShft (LCCR1_PPL))
-
-#define LCCR1_HSW	Fld (6, 10)	/* Horizontal Synchronization */
-#define LCCR1_HorSnchWdth(Tpix)	(((Tpix) - 1) << FShft (LCCR1_HSW))
-
-#define LCCR1_ELW	Fld (8, 16)	/* End-of-Line pixel clock Wait - 1 */
-#define LCCR1_EndLnDel(Tpix)	(((Tpix) - 1) << FShft (LCCR1_ELW))
-
-#define LCCR1_BLW	Fld (8, 24)	/* Beginning-of-Line pixel clock */
-#define LCCR1_BegLnDel(Tpix)	(((Tpix) - 1) << FShft (LCCR1_BLW))
-
-#define LCCR2_LPP	Fld (10, 0)	/* Line Per Panel - 1 */
-#define LCCR2_DisHght(Line)	(((Line) - 1) << FShft (LCCR2_LPP))
-
-#define LCCR2_VSW	Fld (6, 10)	/* Vertical Synchronization pulse - 1 */
-#define LCCR2_VrtSnchWdth(Tln)	(((Tln) - 1) << FShft (LCCR2_VSW))
-
-#define LCCR2_EFW	Fld (8, 16)	/* End-of-Frame line clock Wait */
-#define LCCR2_EndFrmDel(Tln)	((Tln) << FShft (LCCR2_EFW))
-
-#define LCCR2_BFW	Fld (8, 24)	/* Beginning-of-Frame line clock */
-#define LCCR2_BegFrmDel(Tln)	((Tln) << FShft (LCCR2_BFW))
+#define LCCR1_DisWdth(Pixel)	(((Pixel) - 1) << 0)	/* Pixels Per Line - 1 */
+#define LCCR1_HorSnchWdth(Tpix)	(((Tpix) - 1) << 10)	/* Horizontal Synchronization */
+#define LCCR1_EndLnDel(Tpix)	(((Tpix) - 1) << 16)	/* End-of-Line pixel clock Wait - 1 */
+#define LCCR1_BegLnDel(Tpix)	(((Tpix) - 1) << 24)	/* Beginning-of-Line pixel clock */
+#define LCCR2_DisHght(Line)	(((Line) - 1) << 0)	/* Line Per Panel - 1 */
+#define LCCR2_VrtSnchWdth(Tln)	(((Tln) - 1) << 10)	/* Vertical Synchronization pulse - 1 */
+#define LCCR2_EndFrmDel(Tln)	((Tln) << 16)	/* End-of-Frame line clock Wait */
+#define LCCR2_BegFrmDel(Tln)	((Tln) << 24)	/* Beginning-of-Frame line clock */
 
 #define LCCR3_API	(0xf << 16)	/* AC Bias pin trasitions per interrupt */
 #define LCCR3_API_S	16
@@ -122,11 +105,9 @@
 #define LCCR3_OutEnL	(LCCR3_OEP*1)	/*  Output Enable active Low */
 
 #define LCCR3_DPC	(1 << 27)	/* double pixel clock mode */
-#define LCCR3_PCD	Fld (8, 0)	/* Pixel Clock Divisor */
-#define LCCR3_PixClkDiv(Div)	(((Div) << FShft (LCCR3_PCD)))
+#define LCCR3_PixClkDiv(Div)	((Div) << 0)	/* Pixel Clock Divisor */
 
-#define LCCR3_ACB	Fld (8, 8)	/* AC Bias */
-#define LCCR3_Acb(Acb)	(((Acb) << FShft (LCCR3_ACB)))
+#define LCCR3_Acb(Acb)	((Acb) << 8)	/* AC Bias */
 
 #define LCCR3_HorSnchH	(LCCR3_HSP*0)	/*  HSP Active High */
 #define LCCR3_HorSnchL	(LCCR3_HSP*1)	/*  HSP Active Low */
-- 
1.7.7.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
