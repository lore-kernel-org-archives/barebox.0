Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RUHD0-00058G-G3
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 12:18:22 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 26 Nov 2011 13:17:30 +0100
Message-Id: <1322309851-22224-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322309851-22224-1-git-send-email-robert.jarzmik@free.fr>
References: <1322309851-22224-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V2 2/3] drivers/video: add PXA framebuffer support
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-pxa/include/mach/bitfield.h |  113 ++++++
 arch/arm/mach-pxa/include/mach/clock.h    |    1 +
 arch/arm/mach-pxa/include/mach/pxafb.h    |   80 ++++
 arch/arm/mach-pxa/include/mach/regs-lcd.h |  198 ++++++++++
 arch/arm/mach-pxa/speed-pxa27x.c          |   24 ++
 drivers/video/Kconfig                     |    7 +
 drivers/video/Makefile                    |    1 +
 drivers/video/pxa.c                       |  562 +++++++++++++++++++++++++++++
 8 files changed, 986 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-pxa/include/mach/bitfield.h
 create mode 100644 arch/arm/mach-pxa/include/mach/pxafb.h
 create mode 100644 arch/arm/mach-pxa/include/mach/regs-lcd.h
 create mode 100644 drivers/video/pxa.c

diff --git a/arch/arm/mach-pxa/include/mach/bitfield.h b/arch/arm/mach-pxa/include/mach/bitfield.h
new file mode 100644
index 0000000..f1f0e33
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/bitfield.h
@@ -0,0 +1,113 @@
+/*
+ *	FILE    	bitfield.h
+ *
+ *	Version 	1.1
+ *	Author  	Copyright (c) Marc A. Viredaz, 1998
+ *	        	DEC Western Research Laboratory, Palo Alto, CA
+ *	Date    	April 1998 (April 1997)
+ *	System  	Advanced RISC Machine (ARM)
+ *	Language	C or ARM Assembly
+ *	Purpose 	Definition of macros to operate on bit fields.
+ */
+
+
+
+#ifndef __BITFIELD_H
+#define __BITFIELD_H
+
+#ifndef __ASSEMBLY__
+#define UData(Data)	((unsigned long) (Data))
+#else
+#define UData(Data)	(Data)
+#endif
+
+
+/*
+ * MACRO: Fld
+ *
+ * Purpose
+ *    The macro "Fld" encodes a bit field, given its size and its shift value
+ *    with respect to bit 0.
+ *
+ * Note
+ *    A more intuitive way to encode bit fields would have been to use their
+ *    mask. However, extracting size and shift value information from a bit
+ *    field's mask is cumbersome and might break the assembler (255-character
+ *    line-size limit).
+ *
+ * Input
+ *    Size      	Size of the bit field, in number of bits.
+ *    Shft      	Shift value of the bit field with respect to bit 0.
+ *
+ * Output
+ *    Fld       	Encoded bit field.
+ */
+
+#define Fld(Size, Shft)	(((Size) << 16) + (Shft))
+
+
+/*
+ * MACROS: FSize, FShft, FMsk, FAlnMsk, F1stBit
+ *
+ * Purpose
+ *    The macros "FSize", "FShft", "FMsk", "FAlnMsk", and "F1stBit" return
+ *    the size, shift value, mask, aligned mask, and first bit of a
+ *    bit field.
+ *
+ * Input
+ *    Field     	Encoded bit field (using the macro "Fld").
+ *
+ * Output
+ *    FSize     	Size of the bit field, in number of bits.
+ *    FShft     	Shift value of the bit field with respect to bit 0.
+ *    FMsk      	Mask for the bit field.
+ *    FAlnMsk   	Mask for the bit field, aligned on bit 0.
+ *    F1stBit   	First bit of the bit field.
+ */
+
+#define FSize(Field)	((Field) >> 16)
+#define FShft(Field)	((Field) & 0x0000FFFF)
+#define FMsk(Field)	(((UData (1) << FSize (Field)) - 1) << FShft (Field))
+#define FAlnMsk(Field)	((UData (1) << FSize (Field)) - 1)
+#define F1stBit(Field)	(UData (1) << FShft (Field))
+
+
+/*
+ * MACRO: FInsrt
+ *
+ * Purpose
+ *    The macro "FInsrt" inserts a value into a bit field by shifting the
+ *    former appropriately.
+ *
+ * Input
+ *    Value     	Bit-field value.
+ *    Field     	Encoded bit field (using the macro "Fld").
+ *
+ * Output
+ *    FInsrt    	Bit-field value positioned appropriately.
+ */
+
+#define FInsrt(Value, Field) \
+                	(UData (Value) << FShft (Field))
+
+
+/*
+ * MACRO: FExtr
+ *
+ * Purpose
+ *    The macro "FExtr" extracts the value of a bit field by masking and
+ *    shifting it appropriately.
+ *
+ * Input
+ *    Data      	Data containing the bit-field to be extracted.
+ *    Field     	Encoded bit field (using the macro "Fld").
+ *
+ * Output
+ *    FExtr     	Bit-field value.
+ */
+
+#define FExtr(Data, Field) \
+                	((UData (Data) >> FShft (Field)) & FAlnMsk (Field))
+
+
+#endif /* __BITFIELD_H */
diff --git a/arch/arm/mach-pxa/include/mach/clock.h b/arch/arm/mach-pxa/include/mach/clock.h
index cd0ab8e..4326fca 100644
--- a/arch/arm/mach-pxa/include/mach/clock.h
+++ b/arch/arm/mach-pxa/include/mach/clock.h
@@ -12,5 +12,6 @@
 #define __MACH_CLOCK_H
 
 unsigned long pxa_get_uartclk(void);
+unsigned long pxa_get_lcdclk(void);
 
 #endif	/* !__MACH_CLOCK_H */
diff --git a/arch/arm/mach-pxa/include/mach/pxafb.h b/arch/arm/mach-pxa/include/mach/pxafb.h
new file mode 100644
index 0000000..1730fbf
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/pxafb.h
@@ -0,0 +1,80 @@
+/*
+ * This structure describes the machine which we are running on.
+ */
+#ifndef _PXAFB_
+#define _PXAFB_
+
+#include <fb.h>
+
+/*
+ * Supported LCD connections
+ *
+ * bits 0 - 3: for LCD panel type:
+ *
+ *   STN  - for passive matrix
+ *   DSTN - for dual scan passive matrix
+ *   TFT  - for active matrix
+ *
+ * bits 4 - 9 : for bus width
+ * bits 10-17 : for AC Bias Pin Frequency
+ * bit     18 : for output enable polarity
+ * bit     19 : for pixel clock edge
+ * bit     20 : for output pixel format when base is RGBT16
+ */
+#define LCD_CONN_TYPE(_x)	((_x) & 0x0f)
+#define LCD_CONN_WIDTH(_x)	(((_x) >> 4) & 0x1f)
+
+#define LCD_TYPE_MASK		0xf
+#define LCD_TYPE_UNKNOWN	0
+#define LCD_TYPE_MONO_STN	1
+#define LCD_TYPE_MONO_DSTN	2
+#define LCD_TYPE_COLOR_STN	3
+#define LCD_TYPE_COLOR_DSTN	4
+#define LCD_TYPE_COLOR_TFT	5
+#define LCD_TYPE_SMART_PANEL	6
+#define LCD_TYPE_MAX		7
+
+#define LCD_MONO_STN_4BPP	((4  << 4) | LCD_TYPE_MONO_STN)
+#define LCD_MONO_STN_8BPP	((8  << 4) | LCD_TYPE_MONO_STN)
+#define LCD_MONO_DSTN_8BPP	((8  << 4) | LCD_TYPE_MONO_DSTN)
+#define LCD_COLOR_STN_8BPP	((8  << 4) | LCD_TYPE_COLOR_STN)
+#define LCD_COLOR_DSTN_16BPP	((16 << 4) | LCD_TYPE_COLOR_DSTN)
+#define LCD_COLOR_TFT_8BPP	((8  << 4) | LCD_TYPE_COLOR_TFT)
+#define LCD_COLOR_TFT_16BPP	((16 << 4) | LCD_TYPE_COLOR_TFT)
+#define LCD_COLOR_TFT_18BPP	((18 << 4) | LCD_TYPE_COLOR_TFT)
+#define LCD_SMART_PANEL_8BPP	((8  << 4) | LCD_TYPE_SMART_PANEL)
+#define LCD_SMART_PANEL_16BPP	((16 << 4) | LCD_TYPE_SMART_PANEL)
+#define LCD_SMART_PANEL_18BPP	((18 << 4) | LCD_TYPE_SMART_PANEL)
+
+#define LCD_AC_BIAS_FREQ(x)	(((x) & 0xff) << 10)
+#define LCD_BIAS_ACTIVE_HIGH	(0 << 18)
+#define LCD_BIAS_ACTIVE_LOW	(1 << 18)
+#define LCD_PCLK_EDGE_RISE	(0 << 19)
+#define LCD_PCLK_EDGE_FALL	(1 << 19)
+#define LCD_ALTERNATE_MAPPING	(1 << 20)
+
+struct pxafb_videomode {
+	struct fb_videomode	mode;
+	u8			bpp;
+};
+
+/**
+ * Define relevant framebuffer information
+ */
+struct pxafb_platform_data {
+	struct pxafb_videomode	*mode;
+	unsigned int		lcd_conn;
+	int			enable_on_load;
+
+	/** force a memory area to be used, else NULL for dynamic allocation */
+	void			*framebuffer;
+
+	void			(*lcd_power)(int);
+	void			(*backlight_power)(int);
+};
+
+/**
+ * @file
+ * @brief PXA related framebuffer declarations
+ */
+#endif
diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/arch/arm/mach-pxa/include/mach/regs-lcd.h
new file mode 100644
index 0000000..0b03eac
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/regs-lcd.h
@@ -0,0 +1,198 @@
+#ifndef __ASM_ARCH_REGS_LCD_H
+#define __ASM_ARCH_REGS_LCD_H
+
+#include <mach/bitfield.h>
+
+/*
+ * LCD Controller Registers and Bits Definitions
+ */
+#define LCCR0		(0x000)	/* LCD Controller Control Register 0 */
+#define LCCR1		(0x004)	/* LCD Controller Control Register 1 */
+#define LCCR2		(0x008)	/* LCD Controller Control Register 2 */
+#define LCCR3		(0x00C)	/* LCD Controller Control Register 3 */
+#define LCCR4		(0x010)	/* LCD Controller Control Register 4 */
+#define LCCR5		(0x014)	/* LCD Controller Control Register 5 */
+#define LCSR		(0x038)	/* LCD Controller Status Register 0 */
+#define LCSR1		(0x034)	/* LCD Controller Status Register 1 */
+#define LIIDR		(0x03C)	/* LCD Controller Interrupt ID Register */
+#define TMEDRGBR	(0x040)	/* TMED RGB Seed Register */
+#define TMEDCR		(0x044)	/* TMED Control Register */
+
+#define FBR0		(0x020)	/* DMA Channel 0 Frame Branch Register */
+#define FBR1		(0x024)	/* DMA Channel 1 Frame Branch Register */
+#define FBR2		(0x028) /* DMA Channel 2 Frame Branch Register */
+#define FBR3		(0x02C) /* DMA Channel 2 Frame Branch Register */
+#define FBR4		(0x030) /* DMA Channel 2 Frame Branch Register */
+#define FBR5		(0x110) /* DMA Channel 2 Frame Branch Register */
+#define FBR6		(0x114) /* DMA Channel 2 Frame Branch Register */
+
+#define OVL1C1		(0x050)	/* Overlay 1 Control Register 1 */
+#define OVL1C2		(0x060)	/* Overlay 1 Control Register 2 */
+#define OVL2C1		(0x070)	/* Overlay 2 Control Register 1 */
+#define OVL2C2		(0x080)	/* Overlay 2 Control Register 2 */
+
+#define CMDCR		(0x100)	/* Command Control Register */
+#define PRSR		(0x104)	/* Panel Read Status Register */
+
+#define LCCR3_BPP(x)	((((x) & 0x7) << 24) | (((x) & 0x8) ? (1 << 29) : 0))
+
+#define LCCR3_PDFOR_0	(0 << 30)
+#define LCCR3_PDFOR_1	(1 << 30)
+#define LCCR3_PDFOR_2	(2 << 30)
+#define LCCR3_PDFOR_3	(3 << 30)
+
+#define LCCR4_PAL_FOR_0	(0 << 15)
+#define LCCR4_PAL_FOR_1	(1 << 15)
+#define LCCR4_PAL_FOR_2	(2 << 15)
+#define LCCR4_PAL_FOR_3	(3 << 15)
+#define LCCR4_PAL_FOR_MASK	(3 << 15)
+
+#define FDADR0		(0x200)	/* DMA Channel 0 Frame Descriptor Address Register */
+#define FDADR1		(0x210)	/* DMA Channel 1 Frame Descriptor Address Register */
+#define FDADR2		(0x220)	/* DMA Channel 2 Frame Descriptor Address Register */
+#define FDADR3		(0x230)	/* DMA Channel 3 Frame Descriptor Address Register */
+#define FDADR4		(0x240)	/* DMA Channel 4 Frame Descriptor Address Register */
+#define FDADR5		(0x250)	/* DMA Channel 5 Frame Descriptor Address Register */
+#define FDADR6		(0x260) /* DMA Channel 6 Frame Descriptor Address Register */
+
+#define LCCR0_ENB	(1 << 0)	/* LCD Controller enable */
+#define LCCR0_CMS	(1 << 1)	/* Color/Monochrome Display Select */
+#define LCCR0_Color	(LCCR0_CMS*0)	/*  Color display */
+#define LCCR0_Mono	(LCCR0_CMS*1)	/*  Monochrome display */
+#define LCCR0_SDS	(1 << 2)	/* Single/Dual Panel Display Select */
+#define LCCR0_Sngl	(LCCR0_SDS*0)	/*  Single panel display */
+#define LCCR0_Dual	(LCCR0_SDS*1)	/*  Dual panel display */
+
+#define LCCR0_LDM	(1 << 3)	/* LCD Disable Done Mask */
+#define LCCR0_SFM	(1 << 4)	/* Start of frame mask */
+#define LCCR0_IUM	(1 << 5)	/* Input FIFO underrun mask */
+#define LCCR0_EFM	(1 << 6)	/* End of Frame mask */
+#define LCCR0_PAS	(1 << 7)	/* Passive/Active display Select */
+#define LCCR0_Pas	(LCCR0_PAS*0)	/*  Passive display (STN) */
+#define LCCR0_Act	(LCCR0_PAS*1)	/*  Active display (TFT) */
+#define LCCR0_DPD	(1 << 9)	/* Double Pixel Data (monochrome) */
+#define LCCR0_4PixMono	(LCCR0_DPD*0)	/*  4-Pixel/clock Monochrome display */
+#define LCCR0_8PixMono	(LCCR0_DPD*1)	/*  8-Pixel/clock Monochrome display */
+#define LCCR0_DIS	(1 << 10)	/* LCD Disable */
+#define LCCR0_QDM	(1 << 11)	/* LCD Quick Disable mask */
+#define LCCR0_PDD	(0xff << 12)	/* Palette DMA request delay */
+#define LCCR0_PDD_S	12
+#define LCCR0_BM	(1 << 20)	/* Branch mask */
+#define LCCR0_OUM	(1 << 21)	/* Output FIFO underrun mask */
+#define LCCR0_LCDT	(1 << 22)	/* LCD panel type */
+#define LCCR0_RDSTM	(1 << 23)	/* Read status interrupt mask */
+#define LCCR0_CMDIM	(1 << 24)	/* Command interrupt mask */
+#define LCCR0_OUC	(1 << 25)	/* Overlay Underlay control bit */
+#define LCCR0_LDDALT	(1 << 26)	/* LDD alternate mapping control */
+
+#define LCCR1_PPL	Fld (10, 0)	/* Pixels Per Line - 1 */
+#define LCCR1_DisWdth(Pixel)	(((Pixel) - 1) << FShft (LCCR1_PPL))
+
+#define LCCR1_HSW	Fld (6, 10)	/* Horizontal Synchronization */
+#define LCCR1_HorSnchWdth(Tpix)	(((Tpix) - 1) << FShft (LCCR1_HSW))
+
+#define LCCR1_ELW	Fld (8, 16)	/* End-of-Line pixel clock Wait - 1 */
+#define LCCR1_EndLnDel(Tpix)	(((Tpix) - 1) << FShft (LCCR1_ELW))
+
+#define LCCR1_BLW	Fld (8, 24)	/* Beginning-of-Line pixel clock */
+#define LCCR1_BegLnDel(Tpix)	(((Tpix) - 1) << FShft (LCCR1_BLW))
+
+#define LCCR2_LPP	Fld (10, 0)	/* Line Per Panel - 1 */
+#define LCCR2_DisHght(Line)	(((Line) - 1) << FShft (LCCR2_LPP))
+
+#define LCCR2_VSW	Fld (6, 10)	/* Vertical Synchronization pulse - 1 */
+#define LCCR2_VrtSnchWdth(Tln)	(((Tln) - 1) << FShft (LCCR2_VSW))
+
+#define LCCR2_EFW	Fld (8, 16)	/* End-of-Frame line clock Wait */
+#define LCCR2_EndFrmDel(Tln)	((Tln) << FShft (LCCR2_EFW))
+
+#define LCCR2_BFW	Fld (8, 24)	/* Beginning-of-Frame line clock */
+#define LCCR2_BegFrmDel(Tln)	((Tln) << FShft (LCCR2_BFW))
+
+#define LCCR3_API	(0xf << 16)	/* AC Bias pin trasitions per interrupt */
+#define LCCR3_API_S	16
+#define LCCR3_VSP	(1 << 20)	/* vertical sync polarity */
+#define LCCR3_HSP	(1 << 21)	/* horizontal sync polarity */
+#define LCCR3_PCP	(1 << 22)	/* Pixel Clock Polarity (L_PCLK) */
+#define LCCR3_PixRsEdg	(LCCR3_PCP*0)	/*  Pixel clock Rising-Edge */
+#define LCCR3_PixFlEdg	(LCCR3_PCP*1)	/*  Pixel clock Falling-Edge */
+
+#define LCCR3_OEP	(1 << 23)	/* Output Enable Polarity */
+#define LCCR3_OutEnH	(LCCR3_OEP*0)	/*  Output Enable active High */
+#define LCCR3_OutEnL	(LCCR3_OEP*1)	/*  Output Enable active Low */
+
+#define LCCR3_DPC	(1 << 27)	/* double pixel clock mode */
+#define LCCR3_PCD	Fld (8, 0)	/* Pixel Clock Divisor */
+#define LCCR3_PixClkDiv(Div)	(((Div) << FShft (LCCR3_PCD)))
+
+#define LCCR3_ACB	Fld (8, 8)	/* AC Bias */
+#define LCCR3_Acb(Acb)	(((Acb) << FShft (LCCR3_ACB)))
+
+#define LCCR3_HorSnchH	(LCCR3_HSP*0)	/*  HSP Active High */
+#define LCCR3_HorSnchL	(LCCR3_HSP*1)	/*  HSP Active Low */
+
+#define LCCR3_VrtSnchH	(LCCR3_VSP*0)	/*  VSP Active High */
+#define LCCR3_VrtSnchL	(LCCR3_VSP*1)	/*  VSP Active Low */
+
+#define LCCR5_IUM(x)	(1 << ((x) + 23)) /* input underrun mask */
+#define LCCR5_BSM(x)	(1 << ((x) + 15)) /* branch mask */
+#define LCCR5_EOFM(x)	(1 << ((x) + 7))  /* end of frame mask */
+#define LCCR5_SOFM(x)	(1 << ((x) + 0))  /* start of frame mask */
+
+#define LCSR_LDD	(1 << 0)	/* LCD Disable Done */
+#define LCSR_SOF	(1 << 1)	/* Start of frame */
+#define LCSR_BER	(1 << 2)	/* Bus error */
+#define LCSR_ABC	(1 << 3)	/* AC Bias count */
+#define LCSR_IUL	(1 << 4)	/* input FIFO underrun Lower panel */
+#define LCSR_IUU	(1 << 5)	/* input FIFO underrun Upper panel */
+#define LCSR_OU		(1 << 6)	/* output FIFO underrun */
+#define LCSR_QD		(1 << 7)	/* quick disable */
+#define LCSR_EOF	(1 << 8)	/* end of frame */
+#define LCSR_BS		(1 << 9)	/* branch status */
+#define LCSR_SINT	(1 << 10)	/* subsequent interrupt */
+#define LCSR_RD_ST	(1 << 11)	/* read status */
+#define LCSR_CMD_INT	(1 << 12)	/* command interrupt */
+
+#define LCSR1_IU(x)	(1 << ((x) + 23)) /* Input FIFO underrun */
+#define LCSR1_BS(x)	(1 << ((x) + 15)) /* Branch Status */
+#define LCSR1_EOF(x)	(1 << ((x) + 7))  /* End of Frame Status */
+#define LCSR1_SOF(x)	(1 << ((x) - 1))  /* Start of Frame Status */
+
+#define LDCMD_PAL	(1 << 26)	/* instructs DMA to load palette buffer */
+#define LDCMD_EOFINT	(1 << 21)	/* End of Frame Interrupt */
+
+/* overlay control registers */
+#define OVLxC1_PPL(x)	((((x) - 1) & 0x3ff) << 0)	/* Pixels Per Line */
+#define OVLxC1_LPO(x)	((((x) - 1) & 0x3ff) << 10)	/* Number of Lines */
+#define OVLxC1_BPP(x)	(((x) & 0xf) << 20)	/* Bits Per Pixel */
+#define OVLxC1_OEN	(1 << 31)		/* Enable bit for Overlay */
+#define OVLxC2_XPOS(x)	(((x) & 0x3ff) << 0)	/* Horizontal Position */
+#define OVLxC2_YPOS(x)	(((x) & 0x3ff) << 10)	/* Vertical Position */
+#define OVL2C2_PFOR(x)	(((x) & 0x7) << 20)	/* Pixel Format */
+
+/* smartpanel related */
+#define PRSR_DATA(x)	((x) & 0xff)	/* Panel Data */
+#define PRSR_A0		(1 << 8)	/* Read Data Source */
+#define PRSR_ST_OK	(1 << 9)	/* Status OK */
+#define PRSR_CON_NT	(1 << 10)	/* Continue to Next Command */
+
+#define SMART_CMD_A0			 (0x1 << 8)
+#define SMART_CMD_READ_STATUS_REG	 (0x0 << 9)
+#define SMART_CMD_READ_FRAME_BUFFER	((0x0 << 9) | SMART_CMD_A0)
+#define SMART_CMD_WRITE_COMMAND		 (0x1 << 9)
+#define SMART_CMD_WRITE_DATA		((0x1 << 9) | SMART_CMD_A0)
+#define SMART_CMD_WRITE_FRAME		((0x2 << 9) | SMART_CMD_A0)
+#define SMART_CMD_WAIT_FOR_VSYNC	 (0x3 << 9)
+#define SMART_CMD_NOOP			 (0x4 << 9)
+#define SMART_CMD_INTERRUPT		 (0x5 << 9)
+
+#define SMART_CMD(x)	(SMART_CMD_WRITE_COMMAND | ((x) & 0xff))
+#define SMART_DAT(x)	(SMART_CMD_WRITE_DATA | ((x) & 0xff))
+
+/* SMART_DELAY() is introduced for software controlled delay primitive which
+ * can be inserted between command sequences, unused command 0x6 is used here
+ * and delay ranges from 0ms ~ 255ms
+ */
+#define SMART_CMD_DELAY		(0x6 << 9)
+#define SMART_DELAY(ms)		(SMART_CMD_DELAY | ((ms) & 0xff))
+#endif /* __ASM_ARCH_REGS_LCD_H */
diff --git a/arch/arm/mach-pxa/speed-pxa27x.c b/arch/arm/mach-pxa/speed-pxa27x.c
index e8d147f..0317d53 100644
--- a/arch/arm/mach-pxa/speed-pxa27x.c
+++ b/arch/arm/mach-pxa/speed-pxa27x.c
@@ -18,3 +18,27 @@ unsigned long pxa_get_uartclk(void)
 {
 	return 14857000;
 }
+
+/*
+ * Return the current LCD clock frequency in units of 10kHz as
+ */
+static unsigned int pxa_get_lcdclk_10khz(void)
+{
+	unsigned long ccsr;
+	unsigned int l, L, k, K;
+
+	ccsr = CCSR;
+
+	l = ccsr & 0x1f;
+	k = (l <= 7) ? 1 : (l <= 16) ? 2 : 4;
+
+	L = l * BASE_CLK;
+	K = L / k;
+
+	return (K / 10000);
+}
+
+unsigned long pxa_get_lcdclk(void)
+{
+	return pxa_get_lcdclk_10khz() * 10000;
+}
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 28bcfed..df2157e 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -40,4 +40,11 @@ config DRIVER_VIDEO_S3C_VERBOSE
 
 endif
 
+config DRIVER_VIDEO_PXA
+	bool "PXA27x framebuffer driver"
+	depends on ARCH_PXA27X
+	help
+	  Add support for the frame buffer device found on the PXA270
+	  CPU.
+
 endif
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 66b08d8..123c46f 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
 obj-$(CONFIG_DRIVER_VIDEO_S3C) += s3c.o
+obj-$(CONFIG_DRIVER_VIDEO_PXA) += pxa.o
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
new file mode 100644
index 0000000..ddd7087
--- /dev/null
+++ b/drivers/video/pxa.c
@@ -0,0 +1,562 @@
+/*
+ * Copyright (C) 2010 Marc Kleine-Budde, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
+ * USA.
+ *
+ * Derived from the linux-2.6 pxa framebuffer driver:
+ *
+ * Copyright (C) 1999 Eric A. Thomas.
+ * Copyright (C) 2004 Jean-Frederic Clere.
+ * Copyright (C) 2004 Ian Campbell.
+ * Copyright (C) 2004 Jeff Lackey.
+ * Based on sa1100fb.c Copyright (C) 1999 Eric A. Thomas
+ *   which in turn is:
+ * Based on acornfb.c Copyright (C) Russell King.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <fb.h>
+#include <init.h>
+#include <malloc.h>
+
+#include <mach/clock.h>
+#include <mach/pxa-regs.h>
+#include <mach/regs-lcd.h>
+#include <mach/pxafb.h>
+
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <asm-generic/div64.h>
+
+/* PXA LCD DMA descriptor */
+struct pxafb_dma_descriptor {
+	unsigned int fdadr;
+	unsigned int fsadr;
+	unsigned int fidr;
+	unsigned int ldcmd;
+};
+
+enum {
+	PAL_NONE	= -1,
+	PAL_BASE	= 0,
+	PAL_MAX,
+};
+
+enum {
+	DMA_BASE	= 0,
+	DMA_UPPER	= 0,
+	DMA_LOWER	= 1,
+	DMA_MAX,
+};
+
+struct pxafb_dma_buff {
+	struct pxafb_dma_descriptor dma_desc[DMA_MAX * 2];
+};
+
+struct pxafb_info {
+	void __iomem		*regs;
+
+	struct pxafb_dma_buff	*dma_buff;
+	dma_addr_t		fdadr[DMA_MAX * 2];
+
+	u32			lccr0;
+	u32			lccr3;
+	u32			lccr4;
+
+	u32			reg_lccr0;
+	u32			reg_lccr1;
+	u32			reg_lccr2;
+	u32			reg_lccr3;
+	u32			reg_lccr4;
+
+	struct pxafb_videomode	*mode;
+	struct fb_info		info;
+	struct device_d		*dev;
+
+	void			(*lcd_power)(int);
+	void			(*backlight_power)(int);
+};
+
+#define info_to_pxafb_info(_info)	container_of(_info, struct pxafb_info, info)
+
+static inline unsigned long
+lcd_readl(struct pxafb_info *fbi, unsigned int off)
+{
+	return __raw_readl(fbi->regs + off);
+}
+
+static inline void
+lcd_writel(struct pxafb_info *fbi, unsigned int off, unsigned long val)
+{
+	__raw_writel(val, fbi->regs + off);
+}
+
+static inline void pxafb_backlight_power(struct pxafb_info *fbi, int on)
+{
+	pr_debug("pxafb: backlight o%s\n", on ? "n" : "ff");
+
+	if (fbi->backlight_power)
+		fbi->backlight_power(on);
+}
+
+static inline void pxafb_lcd_power(struct pxafb_info *fbi, int on)
+{
+	pr_debug("pxafb: LCD power o%s\n", on ? "n" : "ff");
+
+	if (fbi->lcd_power)
+		fbi->lcd_power(on);
+}
+
+static void pxafb_enable_controller(struct fb_info *info)
+{
+	struct pxafb_info *fbi = info_to_pxafb_info(info);
+
+	pr_debug("pxafb: Enabling LCD controller\n");
+	pr_debug("fdadr0 0x%08x\n", (unsigned int) fbi->fdadr[0]);
+	pr_debug("fdadr1 0x%08x\n", (unsigned int) fbi->fdadr[1]);
+	pr_debug("reg_lccr0 0x%08x\n", (unsigned int) fbi->reg_lccr0);
+	pr_debug("reg_lccr1 0x%08x\n", (unsigned int) fbi->reg_lccr1);
+	pr_debug("reg_lccr2 0x%08x\n", (unsigned int) fbi->reg_lccr2);
+	pr_debug("reg_lccr3 0x%08x\n", (unsigned int) fbi->reg_lccr3);
+	pr_debug("dma_desc  0x%08x\n", (unsigned int) &fbi->dma_buff->dma_desc[DMA_BASE]);
+
+	/* enable LCD controller clock */
+	CKEN |= CKEN_LCD;
+
+	if (fbi->lccr0 & LCCR0_LCDT)
+		return;
+
+	/* Sequence from 11.7.10 */
+	lcd_writel(fbi, LCCR4, fbi->reg_lccr4);
+	lcd_writel(fbi, LCCR3, fbi->reg_lccr3);
+	lcd_writel(fbi, LCCR2, fbi->reg_lccr2);
+	lcd_writel(fbi, LCCR1, fbi->reg_lccr1);
+	lcd_writel(fbi, LCCR0, fbi->reg_lccr0 & ~LCCR0_ENB);
+
+	lcd_writel(fbi, FDADR0, fbi->fdadr[0]);
+	lcd_writel(fbi, FDADR1, fbi->fdadr[1]);
+	lcd_writel(fbi, LCCR0, fbi->reg_lccr0 | LCCR0_ENB);
+
+	pxafb_lcd_power(fbi, 1);
+	pxafb_backlight_power(fbi, 1);
+}
+
+static void pxafb_disable_controller(struct fb_info *info)
+{
+	struct pxafb_info *fbi = info_to_pxafb_info(info);
+	u32 lccr0;
+
+	pxafb_backlight_power(fbi, 0);
+	pxafb_lcd_power(fbi, 0);
+
+	/* Clear LCD Status Register */
+	lcd_writel(fbi, LCSR, 0xffffffff);
+
+	lccr0 = lcd_readl(fbi, LCCR0) & ~LCCR0_LDM;
+	lcd_writel(fbi, LCCR0, lccr0);
+	lcd_writel(fbi, LCCR0, lccr0 | LCCR0_DIS);
+
+	/* disable LCD controller clock */
+	CKEN &= ~CKEN_LCD;
+}
+
+static int setup_frame_dma(struct pxafb_info *fbi, int dma, int pal,
+			   unsigned long start, size_t size)
+{
+	struct pxafb_dma_descriptor *dma_desc;
+
+	if (dma < 0 || dma >= DMA_MAX * 2)
+		return -EINVAL;
+
+	dma_desc = &fbi->dma_buff->dma_desc[dma];
+
+	dma_desc->fsadr = start;
+	dma_desc->fidr  = 0;
+	dma_desc->ldcmd = size;
+
+	if (pal < 0 || pal >= PAL_MAX * 2) {
+		dma_desc->fdadr = virt_to_phys(dma_desc);
+		fbi->fdadr[dma] = virt_to_phys(dma_desc);
+	} else {
+#if 0
+		struct pxafb_dma_descriptor *pal_desc;
+
+		pal_desc = &fbi->dma_buff->pal_desc[pal];
+
+		pal_desc->fsadr = fbi->dma_buff_phys + pal * PALETTE_SIZE;
+		pal_desc->fidr = 0;
+
+		if ((fbi->lccr4 & LCCR4_PAL_FOR_MASK) == LCCR4_PAL_FOR_0)
+			pal_desc->ldcmd = fbi->palette_size * sizeof(u16);
+		else
+			pal_desc->ldcmd = fbi->palette_size * sizeof(u32);
+
+		pal_desc->ldcmd |= LDCMD_PAL;
+
+		/* flip back and forth between palette and frame buffer */
+		pal_desc->fdadr = fbi->dma_buff_phys + dma_desc_off;
+		dma_desc->fdadr = fbi->dma_buff_phys + pal_desc_off;
+		fbi->fdadr[dma] = fbi->dma_buff_phys + dma_desc_off;
+#endif
+	}
+
+	return 0;
+}
+
+static void setup_base_frame(struct pxafb_info *fbi)
+{
+	struct pxafb_videomode *mode = fbi->mode;
+	struct fb_info *info = &fbi->info;
+	int nbytes, dma, pal, bpp = info->bits_per_pixel;
+	unsigned long line_length, offset;
+
+	dma = DMA_BASE;
+	pal = (bpp >= 16) ? PAL_NONE : PAL_BASE;
+
+	line_length = info->xres * info->bits_per_pixel / 8;
+
+	nbytes = line_length * mode->mode.yres;
+	offset = virt_to_phys(info->screen_base);
+
+	if (fbi->lccr0 & LCCR0_SDS) {
+		nbytes = nbytes / 2;
+		setup_frame_dma(fbi, dma + 1, PAL_NONE, offset + nbytes, nbytes);
+	}
+
+	setup_frame_dma(fbi, dma, pal, offset, nbytes);
+}
+
+/*
+ * Calculate the PCD value from the clock rate (in picoseconds).
+ * We take account of the PPCR clock setting.
+ * From PXA Developer's Manual:
+ *
+ *   PixelClock =      LCLK
+ *                -------------
+ *                2 ( PCD + 1 )
+ *
+ *   PCD =      LCLK
+ *         ------------- - 1
+ *         2(PixelClock)
+ *
+ * Where:
+ *   LCLK = LCD/Memory Clock
+ *   PCD = LCCR3[7:0]
+ *
+ * PixelClock here is in Hz while the pixclock argument given is the
+ * period in picoseconds. Hence PixelClock = 1 / ( pixclock * 10^-12 )
+ *
+ * The function get_lclk_frequency_10khz returns LCLK in units of
+ * 10khz. Calling the result of this function lclk gives us the
+ * following
+ *
+ *    PCD = (lclk * 10^4 ) * ( pixclock * 10^-12 )
+ *          -------------------------------------- - 1
+ *                          2
+ *
+ * Factoring the 10^4 and 10^-12 out gives 10^-8 == 1 / 100000000 as used below.
+ */
+static inline unsigned int get_pcd(struct pxafb_info *fbi,
+				   unsigned int pixclock)
+{
+	unsigned long long pcd;
+
+	/*
+	 * FIXME: Need to take into account Double Pixel Clock mode
+	 * (DPC) bit? or perhaps set it based on the various clock
+	 * speeds
+	 */
+	pcd = (unsigned long long)(pxa_get_lcdclk() / 10000);
+	pcd *= pixclock;
+	do_div(pcd, 100000000 * 2);
+	/* no need for this, since we should subtract 1 anyway. they cancel */
+	/* pcd += 1; */ /* make up for integer math truncations */
+	return (unsigned int)pcd;
+}
+
+static void setup_parallel_timing(struct pxafb_info *fbi)
+{
+	struct fb_info *info = &fbi->info;
+	struct fb_videomode *mode = info->mode;
+
+	unsigned int lines_per_panel, pcd = get_pcd(fbi, mode->pixclock);
+
+	fbi->reg_lccr1 =
+		LCCR1_DisWdth(mode->xres) +
+		LCCR1_HorSnchWdth(mode->hsync_len) +
+		LCCR1_BegLnDel(mode->left_margin) +
+		LCCR1_EndLnDel(mode->right_margin);
+
+	/*
+	 * If we have a dual scan LCD, we need to halve
+	 * the YRES parameter.
+	 */
+	lines_per_panel = mode->yres;
+	if ((fbi->lccr0 & LCCR0_SDS) == LCCR0_Dual)
+		lines_per_panel /= 2;
+
+	fbi->reg_lccr2 =
+		LCCR2_DisHght(lines_per_panel) +
+		LCCR2_VrtSnchWdth(mode->vsync_len) +
+		LCCR2_BegFrmDel(mode->upper_margin) +
+		LCCR2_EndFrmDel(mode->lower_margin);
+
+	fbi->reg_lccr3 = fbi->lccr3 |
+		(mode->sync & FB_SYNC_HOR_HIGH_ACT ?
+		 LCCR3_HorSnchH : LCCR3_HorSnchL) |
+		(mode->sync & FB_SYNC_VERT_HIGH_ACT ?
+		 LCCR3_VrtSnchH : LCCR3_VrtSnchL);
+
+	if (pcd)
+		fbi->reg_lccr3 |= LCCR3_PixClkDiv(pcd);
+}
+
+/* calculate pixel depth, transparency bit included, >=16bpp formats _only_ */
+static inline int var_to_depth(struct fb_info *info)
+{
+	return info->red.length + info->green.length +
+		info->blue.length + info->transp.length;
+}
+
+/* calculate 4-bit BPP value for LCCR3 and OVLxC1 */
+static int pxafb_var_to_bpp(struct fb_info *info)
+{
+	int bpp = -EINVAL;
+
+	switch (info->bits_per_pixel) {
+	case 1:  bpp = 0; break;
+	case 2:  bpp = 1; break;
+	case 4:  bpp = 2; break;
+	case 8:  bpp = 3; break;
+	case 16: bpp = 4; break;
+	case 24:
+		switch (var_to_depth(info)) {
+		case 18: bpp = 6; break; /* 18-bits/pixel packed */
+		case 19: bpp = 8; break; /* 19-bits/pixel packed */
+		case 24: bpp = 9; break;
+		}
+		break;
+	case 32:
+		switch (var_to_depth(info)) {
+		case 18: bpp = 5; break; /* 18-bits/pixel unpacked */
+		case 19: bpp = 7; break; /* 19-bits/pixel unpacked */
+		case 25: bpp = 10; break;
+		}
+		break;
+	}
+	return bpp;
+}
+
+/*
+ *  pxafb_var_to_lccr3():
+ *    Convert a bits per pixel value to the correct bit pattern for LCCR3
+ *
+ *  NOTE: for PXA27x with overlays support, the LCCR3_PDFOR_x bits have an
+ *  implication of the acutal use of transparency bit,  which we handle it
+ *  here separatedly. See PXA27x Developer's Manual, Section <<7.4.6 Pixel
+ *  Formats>> for the valid combination of PDFOR, PAL_FOR for various BPP.
+ *
+ *  Transparency for palette pixel formats is not supported at the moment.
+ */
+static uint32_t pxafb_var_to_lccr3(struct fb_info *info)
+{
+	int bpp = pxafb_var_to_bpp(info);
+	uint32_t lccr3;
+
+	if (bpp < 0)
+		return 0;
+
+	lccr3 = LCCR3_BPP(bpp);
+
+	switch (var_to_depth(info)) {
+	case 16: lccr3 |= info->transp.length ? LCCR3_PDFOR_3 : 0; break;
+	case 18: lccr3 |= LCCR3_PDFOR_3; break;
+	case 24: lccr3 |= info->transp.length ? LCCR3_PDFOR_2 : LCCR3_PDFOR_3;
+		 break;
+	case 19:
+	case 25: lccr3 |= LCCR3_PDFOR_0; break;
+	}
+	return lccr3;
+}
+
+/*
+ * Configures LCD Controller based on entries in fbi parameter.
+ */
+static int pxafb_activate_var(struct pxafb_info *fbi)
+{
+	struct fb_info *info = &fbi->info;
+
+	setup_parallel_timing(fbi);
+
+	setup_base_frame(fbi);
+
+	fbi->reg_lccr0 = fbi->lccr0 |
+		(LCCR0_LDM | LCCR0_SFM | LCCR0_IUM | LCCR0_EFM |
+		 LCCR0_QDM | LCCR0_BM  | LCCR0_OUM);
+
+	fbi->reg_lccr3 |= pxafb_var_to_lccr3(info);
+
+	fbi->reg_lccr4 = lcd_readl(fbi, LCCR4) & ~LCCR4_PAL_FOR_MASK;
+	fbi->reg_lccr4 |= (fbi->lccr4 & LCCR4_PAL_FOR_MASK);
+
+	return 0;
+}
+
+#define SET_PIXFMT(v, r, g, b)					\
+({								\
+	(v)->blue.length   = (b); (v)->blue.offset = 0;		\
+	(v)->green.length  = (g); (v)->green.offset = (b);	\
+	(v)->red.length    = (r); (v)->red.offset = (b) + (g);	\
+})
+
+/*
+ * set the RGBT bitfields of fb_var_screeninf according to
+ * var->bits_per_pixel and given depth
+ */
+static void pxafb_set_pixfmt(struct fb_info *info)
+{
+	if (info->bits_per_pixel < 16) {
+		/* indexed pixel formats */
+		info->red.offset    = 0; info->red.length    = 8;
+		info->green.offset  = 0; info->green.length  = 8;
+		info->blue.offset   = 0; info->blue.length   = 8;
+		info->transp.offset = 0; info->transp.length = 8;
+	}
+
+	switch (info->bits_per_pixel) {
+	case 16: SET_PIXFMT(info, 5, 6, 5); break;	/* RGB565 */
+	case 18: SET_PIXFMT(info, 6, 6, 6); break;	/* RGB666 */
+	case 24: SET_PIXFMT(info, 8, 8, 8); break;	/* RGB888 */
+	}
+}
+
+static void pxafb_decode_mach_info(struct pxafb_info *fbi,
+				   struct pxafb_platform_data *inf)
+{
+	unsigned int lcd_conn = inf->lcd_conn;
+
+	switch (lcd_conn & LCD_TYPE_MASK) {
+	case LCD_TYPE_MONO_STN:
+		fbi->lccr0 = LCCR0_CMS;
+		break;
+	case LCD_TYPE_MONO_DSTN:
+		fbi->lccr0 = LCCR0_CMS | LCCR0_SDS;
+		break;
+	case LCD_TYPE_COLOR_STN:
+		fbi->lccr0 = 0;
+		break;
+	case LCD_TYPE_COLOR_DSTN:
+		fbi->lccr0 = LCCR0_SDS;
+		break;
+	case LCD_TYPE_COLOR_TFT:
+		fbi->lccr0 = LCCR0_PAS;
+		break;
+	case LCD_TYPE_SMART_PANEL:
+		fbi->lccr0 = LCCR0_LCDT | LCCR0_PAS;
+		break;
+	}
+
+	if (lcd_conn == LCD_MONO_STN_8BPP)
+		fbi->lccr0 |= LCCR0_DPD;
+
+	fbi->lccr0 |= (lcd_conn & LCD_ALTERNATE_MAPPING) ? LCCR0_LDDALT : 0;
+
+	fbi->lccr3 = LCCR3_Acb((inf->lcd_conn >> 10) & 0xff) |
+		(lcd_conn & LCD_BIAS_ACTIVE_LOW) ? LCCR3_OEP : 0 |
+		(lcd_conn & LCD_PCLK_EDGE_FALL)  ? LCCR3_PCP : 0;
+
+	pxafb_set_pixfmt(&fbi->info);
+}
+
+static struct fb_ops pxafb_ops = {
+	.fb_enable	= pxafb_enable_controller,
+	.fb_disable	= pxafb_disable_controller,
+};
+
+static int pxafb_probe(struct device_d *dev)
+{
+	struct pxafb_platform_data *pdata = dev->platform_data;
+	struct pxafb_info *fbi;
+	struct fb_info *info;
+	int ret;
+
+	if (!pdata)
+		return -ENODEV;
+
+	fbi = xzalloc(sizeof(*fbi));
+	info = &fbi->info;
+
+	fbi->mode = pdata->mode;
+	fbi->regs = dev_request_mem_region(dev, 0);
+
+	fbi->dev = dev;
+	fbi->lcd_power = pdata->lcd_power;
+	fbi->backlight_power = pdata->backlight_power;
+	info->mode = &pdata->mode->mode;
+	info->fbops = &pxafb_ops;
+
+	info->xres = pdata->mode->mode.xres;
+	info->yres = pdata->mode->mode.yres;
+	info->bits_per_pixel = pdata->mode->bpp;
+
+	pxafb_decode_mach_info(fbi, pdata);
+
+	dev_info(dev, "PXA Framebuffer driver\n");
+
+	if (pdata->framebuffer)
+		fbi->info.screen_base = pdata->framebuffer;
+	else
+		fbi->info.screen_base =
+			PTR_ALIGN(dma_alloc_coherent(info->xres * info->yres *
+						     (info->bits_per_pixel >> 3) + PAGE_SIZE),
+				  PAGE_SIZE);
+
+	fbi->dma_buff = PTR_ALIGN(dma_alloc_coherent(sizeof(struct pxafb_dma_buff) + 16),
+				  16);
+
+	pxafb_activate_var(fbi);
+
+	ret = register_framebuffer(&fbi->info);
+	if (ret < 0) {
+		dev_err(dev, "failed to register framebuffer\n");
+		return ret;
+	}
+
+	if (pdata->enable_on_load)
+		info->fbops->fb_enable(info);
+
+	return 0;
+}
+
+static void pxafb_remove(struct device_d *dev)
+{
+}
+
+static struct driver_d pxafb_driver = {
+	.name	= "pxafb",
+	.probe	= pxafb_probe,
+	.remove	= pxafb_remove,
+};
+
+static int pxafb_init(void)
+{
+	return register_driver(&pxafb_driver);
+}
+
+device_initcall(pxafb_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
