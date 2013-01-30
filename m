Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0gyG-00005X-Vz
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 23:21:52 +0000
Received: from mail415.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id DAAF0FF9E04
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 00:36:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 31 Jan 2013 00:20:13 +0100
Message-Id: <1359588017-20045-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359588017-20045-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130130230825.GX26329@game.jcrosoft.org>
 <1359588017-20045-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] video: add Atmel HLCD support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/atmel_hlcdc.h |  760 +++++++++++++++++++++++++
 drivers/video/Kconfig                         |    4 +
 drivers/video/Makefile                        |    1 +
 drivers/video/atmel_hlcdfb.c                  |  297 ++++++++++
 drivers/video/atmel_lcdfb.h                   |    2 +-
 drivers/video/atmel_lcdfb_core.c              |    5 +
 6 files changed, 1068 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-at91/include/mach/atmel_hlcdc.h
 create mode 100644 drivers/video/atmel_hlcdfb.c

diff --git a/arch/arm/mach-at91/include/mach/atmel_hlcdc.h b/arch/arm/mach-at91/include/mach/atmel_hlcdc.h
new file mode 100644
index 0000000..71ccb96
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/atmel_hlcdc.h
@@ -0,0 +1,760 @@
+/*
+ *  Header file for AT91 High end LCD Controller
+ *
+ *  Data structure and register user interface
+ *
+ *  Copyright (C) 2010 Atmel Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PUROFFSETE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#ifndef __MACH_ATMEL_HLCD_H__
+#define __MACH_ATMEL_HLCD_H__
+
+/* Lcdc hardware registers */
+#define ATMEL_LCDC_LCDCFG0	0x0000
+#define LCDC_LCDCFG0_CLKPOL		(0x1 << 0)
+#define LCDC_LCDCFG0_CLKSEL		(0x1 << 2)
+#define LCDC_LCDCFG0_CLKPWMSEL		(0x1 << 3)
+#define LCDC_LCDCFG0_CGDISBASE		(0x1 << 8)
+#define LCDC_LCDCFG0_CGDISOVR1		(0x1 << 9)
+#define LCDC_LCDCFG0_CGDISOVR2		(0x1 << 10)
+#define LCDC_LCDCFG0_CGDISHEO		(0x1 << 11)
+#define LCDC_LCDCFG0_CGDISHCR		(0x1 << 12)
+#define LCDC_LCDCFG0_CGDISPP		(0x1 << 13)
+#define LCDC_LCDCFG0_CLKDIV_OFFSET	16
+#define LCDC_LCDCFG0_CLKDIV		(0xff << LCDC_LCDCFG0_CLKDIV_OFFSET)
+
+#define ATMEL_LCDC_LCDCFG1	0x0004
+#define LCDC_LCDCFG1_HSPW_OFFSET	0
+#define LCDC_LCDCFG1_HSPW		(0x3f << LCDC_LCDCFG1_HSPW_OFFSET)
+#define LCDC_LCDCFG1_VSPW_OFFSET	16
+#define LCDC_LCDCFG1_VSPW		(0x3f << LCDC_LCDCFG1_VSPW_OFFSET)
+
+#define ATMEL_LCDC_LCDCFG2	0x0008
+#define LCDC_LCDCFG2_VFPW_OFFSET	0
+#define LCDC_LCDCFG2_VFPW		(0x3f << LCDC_LCDCFG2_VFPW_OFFSET)
+#define LCDC_LCDCFG2_VBPW_OFFSET	16
+#define LCDC_LCDCFG2_VBPW		(0x3f << LCDC_LCDCFG2_VBPW_OFFSET)
+
+#define ATMEL_LCDC_LCDCFG3	0x000C
+#define LCDC_LCDCFG3_HFPW_OFFSET	0
+#define LCDC_LCDCFG3_HFPW		(0xff << LCDC_LCDCFG3_HFPW_OFFSET)
+#define LCDC2_LCDCFG3_HFPW		(0x1ff << LCDC_LCDCFG3_HFPW_OFFSET)
+#define LCDC_LCDCFG3_HBPW_OFFSET	16
+#define LCDC_LCDCFG3_HBPW		(0xff << LCDC_LCDCFG3_HBPW_OFFSET)
+#define LCDC2_LCDCFG3_HBPW		(0x1ff << LCDC_LCDCFG3_HBPW_OFFSET)
+
+#define ATMEL_LCDC_LCDCFG4	0x0010
+#define LCDC_LCDCFG4_PPL_OFFSET		0
+#define LCDC_LCDCFG4_PPL		(0x7ff << LCDC_LCDCFG4_PPL_OFFSET)
+#define LCDC_LCDCFG4_RPF_OFFSET		16
+#define LCDC_LCDCFG4_RPF		(0x7ff << LCDC_LCDCFG4_RPF_OFFSET)
+
+#define ATMEL_LCDC_LCDCFG5	0x0014
+#define LCDC_LCDCFG5_HSPOL		(0x1 << 0)
+#define LCDC_LCDCFG5_VSPOL		(0x1 << 1)
+#define LCDC_LCDCFG5_VSPDLYS		(0x1 << 2)
+#define LCDC_LCDCFG5_VSPDLYE		(0x1 << 3)
+#define LCDC_LCDCFG5_DISPPOL		(0x1 << 4)
+#define LCDC_LCDCFG5_SERIAL		(0x1 << 5)
+#define LCDC_LCDCFG5_DITHER		(0x1 << 6)
+#define LCDC_LCDCFG5_DISPDLY		(0x1 << 7)
+#define LCDC_LCDCFG5_MODE_OFFSET	8
+#define LCDC_LCDCFG5_MODE		(0x3 << LCDC_LCDCFG5_MODE_OFFSET)
+#define		LCDC_LCDCFG5_MODE_OUTPUT_12BPP		(0x0 << 8)
+#define		LCDC_LCDCFG5_MODE_OUTPUT_16BPP		(0x1 << 8)
+#define		LCDC_LCDCFG5_MODE_OUTPUT_18BPP		(0x2 << 8)
+#define		LCDC_LCDCFG5_MODE_OUTPUT_24BPP		(0x3 << 8)
+#define LCDC_LCDCFG5_PP			(0x1 << 10)
+#define LCDC_LCDCFG5_VSPSU		(0x1 << 12)
+#define LCDC_LCDCFG5_VSPHO		(0x1 << 13)
+#define LCDC_LCDCFG5_GUARDTIME_OFFSET	16
+#define LCDC_LCDCFG5_GUARDTIME		(0x1f << LCDC_LCDCFG5_GUARDTIME_OFFSET)
+
+#define ATMEL_LCDC_LCDCFG6	0x0018
+#define LCDC_LCDCFG6_PWMPS_OFFSET	0
+#define LCDC_LCDCFG6_PWMPS		(0x7 << LCDC_LCDCFG6_PWMPS_OFFSET)
+#define LCDC_LCDCFG6_PWMPOL		(0x1 << 4)
+#define LCDC_LCDCFG6_PWMCVAL_OFFSET	8
+#define LCDC_LCDCFG6_PWMCVAL		(0xff << LCDC_LCDCFG6_PWMCVAL_OFFSET)
+
+#define ATMEL_LCDC_LCDEN	0x0020
+#define LCDC_LCDEN_CLKEN		(0x1 << 0)
+#define LCDC_LCDEN_SYNCEN		(0x1 << 1)
+#define LCDC_LCDEN_DISPEN		(0x1 << 2)
+#define LCDC_LCDEN_PWMEN		(0x1 << 3)
+
+#define ATMEL_LCDC_LCDDIS	0x0024
+#define LCDC_LCDDIS_CLKDIS		(0x1 << 0)
+#define LCDC_LCDDIS_SYNCDIS		(0x1 << 1)
+#define LCDC_LCDDIS_DISPDIS		(0x1 << 2)
+#define LCDC_LCDDIS_PWMDIS		(0x1 << 3)
+#define LCDC_LCDDIS_CLKRST		(0x1 << 8)
+#define LCDC_LCDDIS_SYNCRST		(0x1 << 9)
+#define LCDC_LCDDIS_DISPRST		(0x1 << 10)
+#define LCDC_LCDDIS_PWMRST		(0x1 << 11)
+
+#define ATMEL_LCDC_LCDSR	0x0028
+#define LCDC_LCDSR_CLKSTS		(0x1 << 0)
+#define LCDC_LCDSR_LCDSTS		(0x1 << 1)
+#define LCDC_LCDSR_DISPSTS		(0x1 << 2)
+#define LCDC_LCDSR_PWMSTS		(0x1 << 3)
+#define LCDC_LCDSR_SIPSTS		(0x1 << 4)
+
+#define ATMEL_LCDC_LCDIER	0x002C
+#define LCDC_LCDIER_SOFIE		(0x1 << 0)
+#define LCDC_LCDIER_DISIE		(0x1 << 1)
+#define LCDC_LCDIER_DISPIE		(0x1 << 2)
+#define LCDC_LCDIER_FIFOERRIE		(0x1 << 4)
+#define LCDC_LCDIER_BASEIE		(0x1 << 8)
+#define LCDC_LCDIER_OVR1IE		(0x1 << 9)
+#define LCDC_LCDIER_OVR2IE		(0x1 << 10)
+#define LCDC_LCDIER_HEOIE		(0x1 << 11)
+#define LCDC_LCDIER_HCRIE		(0x1 << 12)
+#define LCDC_LCDIER_PPIE		(0x1 << 13)
+
+#define ATMEL_LCDC_LCDIDR	0x0030
+#define LCDC_LCDIDR_SOFID		(0x1 << 0)
+#define LCDC_LCDIDR_DISID		(0x1 << 1)
+#define LCDC_LCDIDR_DISPID		(0x1 << 2)
+#define LCDC_LCDIDR_FIFOERRID		(0x1 << 4)
+#define LCDC_LCDIDR_BASEID		(0x1 << 8)
+#define LCDC_LCDIDR_OVR1ID		(0x1 << 9)
+#define LCDC_LCDIDR_OVR2ID		(0x1 << 10)
+#define LCDC_LCDIDR_HEOID		(0x1 << 11)
+#define LCDC_LCDIDR_HCRID		(0x1 << 12)
+#define LCDC_LCDIDR_PPID		(0x1 << 13)
+
+#define ATMEL_LCDC_LCDIMR	0x0034
+#define LCDC_LCDIMR_SOFIM		(0x1 << 0)
+#define LCDC_LCDIMR_DISIM		(0x1 << 1)
+#define LCDC_LCDIMR_DISPIM		(0x1 << 2)
+#define LCDC_LCDIMR_FIFOERRIM		(0x1 << 4)
+#define LCDC_LCDIMR_BASEIM		(0x1 << 8)
+#define LCDC_LCDIMR_OVR1IM		(0x1 << 9)
+#define LCDC_LCDIMR_OVR2IM		(0x1 << 10)
+#define LCDC_LCDIMR_HEOIM		(0x1 << 11)
+#define LCDC_LCDIMR_HCRIM		(0x1 << 12)
+#define LCDC_LCDIMR_PPIM		(0x1 << 13)
+
+#define ATMEL_LCDC_LCDISR	0x0038
+#define LCDC_LCDISR_SOF			(0x1 << 0)
+#define LCDC_LCDISR_DIS			(0x1 << 1)
+#define LCDC_LCDISR_DISP		(0x1 << 2)
+#define LCDC_LCDISR_FIFOERR		(0x1 << 4)
+#define LCDC_LCDISR_BASE		(0x1 << 8)
+#define LCDC_LCDISR_OVR1		(0x1 << 9)
+#define LCDC_LCDISR_OVR2		(0x1 << 10)
+#define LCDC_LCDISR_HEO			(0x1 << 11)
+#define LCDC_LCDISR_HCR			(0x1 << 12)
+#define LCDC_LCDISR_PP			(0x1 << 13)
+
+#define ATMEL_LCDC_BASECHER	0x0040
+#define LCDC_BASECHER_CHEN		(0x1 << 0)
+#define LCDC_BASECHER_UPDATEEN		(0x1 << 1)
+#define LCDC_BASECHER_A2QEN		(0x1 << 2)
+
+#define ATMEL_LCDC_BASECHDR	0x0044
+#define LCDC_BASECHDR_CHDIS		(0x1 << 0)
+#define LCDC_BASECHDR_CHRST		(0x1 << 8)
+
+#define ATMEL_LCDC_BASECHSR	0x0048
+#define LCDC_BASECHSR_CHSR		(0x1 << 0)
+#define LCDC_BASECHSR_UPDATESR		(0x1 << 1)
+#define LCDC_BASECHSR_A2QSR		(0x1 << 2)
+
+#define ATMEL_LCDC_BASEIER	0x004C
+#define LCDC_BASEIER_DMA		(0x1 << 2)
+#define LCDC_BASEIER_DSCR		(0x1 << 3)
+#define LCDC_BASEIER_ADD		(0x1 << 4)
+#define LCDC_BASEIER_DONE		(0x1 << 5)
+#define LCDC_BASEIER_OVR		(0x1 << 6)
+
+#define ATMEL_LCDC_BASEIDR	0x0050
+#define LCDC_BASEIDR_DMA		(0x1 << 2)
+#define LCDC_BASEIDR_DSCR		(0x1 << 3)
+#define LCDC_BASEIDR_ADD		(0x1 << 4)
+#define LCDC_BASEIDR_DONE		(0x1 << 5)
+#define LCDC_BASEIDR_OVR		(0x1 << 6)
+
+#define ATMEL_LCDC_BASEIMR	0x0054
+#define LCDC_BASEIMR_DMA		(0x1 << 2)
+#define LCDC_BASEIMR_DSCR		(0x1 << 3)
+#define LCDC_BASEIMR_ADD		(0x1 << 4)
+#define LCDC_BASEIMR_DONE		(0x1 << 5)
+#define LCDC_BASEIMR_OVR		(0x1 << 6)
+
+#define ATMEL_LCDC_BASEISR	0x0058
+#define LCDC_BASEISR_DMA		(0x1 << 2)
+#define LCDC_BASEISR_DSCR		(0x1 << 3)
+#define LCDC_BASEISR_ADD		(0x1 << 4)
+#define LCDC_BASEISR_DONE		(0x1 << 5)
+#define LCDC_BASEISR_OVR		(0x1 << 6)
+
+#define ATMEL_LCDC_BASEHEAD	0x005C
+
+#define ATMEL_LCDC_BASEADDR	0x0060
+
+#define ATMEL_LCDC_BASECTRL	0x0064
+#define LCDC_BASECTRL_DFETCH		(0x1 << 0)
+#define LCDC_BASECTRL_LFETCH		(0x1 << 1)
+#define LCDC_BASECTRL_DMAIEN		(0x1 << 2)
+#define LCDC_BASECTRL_DSCRIEN		(0x1 << 3)
+#define LCDC_BASECTRL_ADDIEN		(0x1 << 4)
+#define LCDC_BASECTRL_DONEIEN		(0x1 << 5)
+
+#define ATMEL_LCDC_BASENEXT	0x0068
+
+#define ATMEL_LCDC_BASECFG0	0x006C
+#define LCDC_BASECFG0_SIF		(0x1 << 0)
+#define LCDC_BASECFG0_BLEN_OFFSET 4
+#define LCDC_BASECFG0_BLEN		(0x3 << LCDC_BASECFG0_BLEN_OFFSET)
+#define		LCDC_BASECFG0_BLEN_AHB_SINGLE		(0x0 << 4)
+#define		LCDC_BASECFG0_BLEN_AHB_INCR4		(0x1 << 4)
+#define		LCDC_BASECFG0_BLEN_AHB_INCR8		(0x2 << 4)
+#define		LCDC_BASECFG0_BLEN_AHB_INCR16		(0x3 << 4)
+#define LCDC_BASECFG0_DLBO		(0x1 << 8)
+
+#define ATMEL_LCDC_BASECFG1	0x0070
+#define LCDC_BASECFG1_CLUTEN		(0x1 << 0)
+#define LCDC_BASECFG1_RGBMODE_OFFSET	4
+#define LCDC_BASECFG1_RGBMODE		(0xf << LCDC_BASECFG1_RGBMODE_OFFSET)
+#define		LCDC_BASECFG1_RGBMODE_12BPP_RGB_444	(0x0 << 4)
+#define		LCDC_BASECFG1_RGBMODE_16BPP_ARGB_4444	(0x1 << 4)
+#define		LCDC_BASECFG1_RGBMODE_16BPP_RGBA_4444	(0x2 << 4)
+#define		LCDC_BASECFG1_RGBMODE_16BPP_RGB_565	(0x3 << 4)
+#define		LCDC_BASECFG1_RGBMODE_16BPP_TRGB_1555	(0x4 << 4)
+#define		LCDC_BASECFG1_RGBMODE_18BPP_RGB_666	(0x5 << 4)
+#define		LCDC_BASECFG1_RGBMODE_18BPP_RGB_666_PACKED	(0x6 << 4)
+#define		LCDC_BASECFG1_RGBMODE_19BPP_TRGB_1666	(0x7 << 4)
+#define		LCDC_BASECFG1_RGBMODE_19BPP_TRGB_PACKED	(0x8 << 4)
+#define		LCDC_BASECFG1_RGBMODE_24BPP_RGB_888	(0x9 << 4)
+#define		LCDC_BASECFG1_RGBMODE_24BPP_RGB_888_PACKED	(0xA << 4)
+#define		LCDC_BASECFG1_RGBMODE_25BPP_TRGB_1888	(0xB << 4)
+#define		LCDC_BASECFG1_RGBMODE_32BPP_ARGB_8888	(0xC << 4)
+#define		LCDC_BASECFG1_RGBMODE_32BPP_RGBA_8888	(0xD << 4)
+#define LCDC_BASECFG1_CLUTMODE_OFFSET	8
+#define LCDC_BASECFG1_CLUTMODE		(0x3 << LCDC_BASECFG1_CLUTMODE_OFFSET)
+#define		LCDC_BASECFG1_CLUTMODE_1BPP		(0x0 << 8)
+#define		LCDC_BASECFG1_CLUTMODE_2BPP		(0x1 << 8)
+#define		LCDC_BASECFG1_CLUTMODE_4BPP		(0x2 << 8)
+#define		LCDC_BASECFG1_CLUTMODE_8BPP		(0x3 << 8)
+
+#define ATMEL_LCDC_BASECFG2	0x0074
+
+#define ATMEL_LCDC_BASECFG3	0x0078
+#define LCDC_BASECFG3_BDEF_OFFSET	0
+#define LCDC_BASECFG3_BDEF		(0xff << LCDC_BASECFG3_BDEF_OFFSET)
+#define LCDC_BASECFG3_GDEF_OFFSET	8
+#define LCDC_BASECFG3_GDEF		(0xff << LCDC_BASECFG3_GDEF_OFFSET)
+#define LCDC_BASECFG3_RDEF_OFFSET	16
+#define LCDC_BASECFG3_RDEF		(0xff << LCDC_BASECFG3_RDEF_OFFSET)
+
+#define ATMEL_LCDC_BASECFG4	0x007C
+#define LCDC_BASECFG4_DMA		(0x1 << 8)
+#define LCDC_BASECFG4_REP		(0x1 << 9)
+#define LCDC_BASECFG4_DISCEN		(0x1 << 11)
+
+#define ATMEL_LCDC_BASECFG5	0x0080
+#define LCDC_BASECFG5_DISCXPOS_OFFSET	0
+#define LCDC_BASECFG5_DISCXPOS		(0x7ff << LCDC_BASECFG5_DISCXPOS_OFFSET)
+#define LCDC_BASECFG5_DISCYPOS_OFFSET	16
+#define LCDC_BASECFG5_DISCYPOS		(0x7ff << LCDC_BASECFG5_DISCYPOS_OFFSET)
+
+#define ATMEL_LCDC_BASECFG6	0x0084
+#define LCDC_BASECFG6_DISCXSIZE_OFFSET	0
+#define LCDC_BASECFG6_DISCXSIZE		(0x7ff << LCDC_BASECFG6_DISCXSIZE_OFFSET)
+#define LCDC_BASECFG6_DISCYSIZE_OFFSET	16
+#define LCDC_BASECFG6_DISCYSIZE		(0x7ff << LCDC_BASECFG6_DISCYSIZE_OFFSET)
+
+#define ATMEL_LCDC_HEOCHER	0x0280
+#define ATMEL_LCDC2_HEOCHER	0x0340
+#define LCDC_HEOCHER_CHEN		(0x1 << 0)
+#define LCDC_HEOCHER_UPDATEEN		(0x1 << 1)
+#define LCDC_HEOCHER_A2QEN		(0x1 << 2)
+
+#define ATMEL_LCDC_HEOCHDR	0x0284
+#define LCDC_HEOCHDR_CHDIS		(0x1 << 0)
+#define LCDC_HEOCHDR_CHRST		(0x1 << 8)
+
+#define ATMEL_LCDC_HEOCHSR	0x0288
+#define LCDC_HEOCHSR_CHSR		(0x1 << 0)
+#define LCDC_HEOCHSR_UPDATESR		(0x1 << 1)
+#define LCDC_HEOCHSR_A2QSR		(0x1 << 2)
+
+#define ATMEL_LCDC_HEOIER	0x028C
+#define LCDC_HEOIER_DMA			(0x1 << 2)
+#define LCDC_HEOIER_DSCR		(0x1 << 3)
+#define LCDC_HEOIER_ADD			(0x1 << 4)
+#define LCDC_HEOIER_DONE		(0x1 << 5)
+#define LCDC_HEOIER_OVR			(0x1 << 6)
+#define LCDC_HEOIER_UDMA		(0x1 << 10)
+#define LCDC_HEOIER_UDSCR		(0x1 << 11)
+#define LCDC_HEOIER_UADD		(0x1 << 12)
+#define LCDC_HEOIER_UDONE		(0x1 << 13)
+#define LCDC_HEOIER_UOVR		(0x1 << 14)
+#define LCDC_HEOIER_VDMA		(0x1 << 18)
+#define LCDC_HEOIER_VDSCR		(0x1 << 19)
+#define LCDC_HEOIER_VADD		(0x1 << 20)
+#define LCDC_HEOIER_VDONE		(0x1 << 21)
+#define LCDC_HEOIER_VOVR		(0x1 << 22)
+
+#define ATMEL_LCDC_HEOIDR	0x0290
+#define LCDC_HEOIDR_DMA			(0x1 << 2)
+#define LCDC_HEOIDR_DSCR		(0x1 << 3)
+#define LCDC_HEOIDR_ADD			(0x1 << 4)
+#define LCDC_HEOIDR_DONE		(0x1 << 5)
+#define LCDC_HEOIDR_OVR			(0x1 << 6)
+#define LCDC_HEOIDR_UDMA		(0x1 << 10)
+#define LCDC_HEOIDR_UDSCR		(0x1 << 11)
+#define LCDC_HEOIDR_UADD		(0x1 << 12)
+#define LCDC_HEOIDR_UDONE		(0x1 << 13)
+#define LCDC_HEOIDR_UOVR		(0x1 << 14)
+#define LCDC_HEOIDR_VDMA		(0x1 << 18)
+#define LCDC_HEOIDR_VDSCR		(0x1 << 19)
+#define LCDC_HEOIDR_VADD		(0x1 << 20)
+#define LCDC_HEOIDR_VDONE		(0x1 << 21)
+#define LCDC_HEOIDR_VOVR		(0x1 << 22)
+
+#define ATMEL_LCDC_HEOIMR	0x0294
+#define LCDC_HEOIMR_DMA			(0x1 << 2)
+#define LCDC_HEOIMR_DSCR		(0x1 << 3)
+#define LCDC_HEOIMR_ADD			(0x1 << 4)
+#define LCDC_HEOIMR_DONE		(0x1 << 5)
+#define LCDC_HEOIMR_OVR			(0x1 << 6)
+#define LCDC_HEOIMR_UDMA		(0x1 << 10)
+#define LCDC_HEOIMR_UDSCR		(0x1 << 11)
+#define LCDC_HEOIMR_UADD		(0x1 << 12)
+#define LCDC_HEOIMR_UDONE		(0x1 << 13)
+#define LCDC_HEOIMR_UOVR		(0x1 << 14)
+#define LCDC_HEOIMR_VDMA		(0x1 << 18)
+#define LCDC_HEOIMR_VDSCR		(0x1 << 19)
+#define LCDC_HEOIMR_VADD		(0x1 << 20)
+#define LCDC_HEOIMR_VDONE		(0x1 << 21)
+#define LCDC_HEOIMR_VOVR		(0x1 << 22)
+
+#define ATMEL_LCDC_HEOISR	0x0298
+#define LCDC_HEOISR_DMA			(0x1 << 2)
+#define LCDC_HEOISR_DSCR		(0x1 << 3)
+#define LCDC_HEOISR_ADD			(0x1 << 4)
+#define LCDC_HEOISR_DONE		(0x1 << 5)
+#define LCDC_HEOISR_OVR			(0x1 << 6)
+#define LCDC_HEOISR_UDMA		(0x1 << 10)
+#define LCDC_HEOISR_UDSCR		(0x1 << 11)
+#define LCDC_HEOISR_UADD		(0x1 << 12)
+#define LCDC_HEOISR_UDONE		(0x1 << 13)
+#define LCDC_HEOISR_UOVR		(0x1 << 14)
+#define LCDC_HEOISR_VDMA		(0x1 << 18)
+#define LCDC_HEOISR_VDSCR		(0x1 << 19)
+#define LCDC_HEOISR_VADD		(0x1 << 20)
+#define LCDC_HEOISR_VDONE		(0x1 << 21)
+#define LCDC_HEOISR_VOVR		(0x1 << 22)
+
+#define ATMEL_LCDC_HEOHEAD	0x029C
+
+#define ATMEL_LCDC_HEOADDR	0x02A0
+
+#define ATMEL_LCDC_HEOCTRL	0x02A4
+#define LCDC_HEOCTRL_DFETCH		(0x1 << 0)
+#define LCDC_HEOCTRL_LFETCH		(0x1 << 1)
+#define LCDC_HEOCTRL_DMAIEN		(0x1 << 2)
+#define LCDC_HEOCTRL_DSCRIEN		(0x1 << 3)
+#define LCDC_HEOCTRL_ADDIEN		(0x1 << 4)
+#define LCDC_HEOCTRL_DONEIEN		(0x1 << 5)
+
+#define ATMEL_LCDC_HEONEXT	0x02A8
+
+#define ATMEL_LCDC_HEOUHEAD	0x02AC
+
+#define ATMEL_LCDC_HEOUADDR	0x02B0
+
+#define ATMEL_LCDC_HEOUCTRL	0x02B4
+#define LCDC_HEOUCTRL_UDFETCH		(0x1 << 0)
+#define LCDC_HEOUCTRL_UDMAIEN		(0x1 << 2)
+#define LCDC_HEOUCTRL_UDSCRIEN		(0x1 << 3)
+#define LCDC_HEOUCTRL_UADDIEN		(0x1 << 4)
+#define LCDC_HEOUCTRL_UDONEIEN		(0x1 << 5)
+
+#define ATMEL_LCDC_HEOUNEXT	0x02B8
+
+#define ATMEL_LCDC_HEOVHEAD	0x02BC
+
+#define ATMEL_LCDC_HEOVADDR	0x02C0
+
+#define ATMEL_LCDC_HEOVCTRL	0x02C4
+#define LCDC_HEOVCTRL_VDFETCH		(0x1 << 0)
+#define LCDC_HEOVCTRL_VDMAIEN		(0x1 << 2)
+#define LCDC_HEOVCTRL_VDSCRIEN		(0x1 << 3)
+#define LCDC_HEOVCTRL_VADDIEN		(0x1 << 4)
+#define LCDC_HEOVCTRL_VDONEIEN		(0x1 << 5)
+
+#define ATMEL_LCDC_HEOVNEXT	0x02C8
+
+#define ATMEL_LCDC_HEOCFG0	0x02CC
+#define LCDC_HEOCFG0_BLEN_OFFSET	4
+#define LCDC_HEOCFG0_BLEN		(0x3 << LCDC_HEOCFG0_BLEN_OFFSET)
+#define		LCDC_HEOCFG0_BLEN_AHB_SINGLE		(0x0 << 4)
+#define		LCDC_HEOCFG0_BLEN_AHB_INCR4		(0x1 << 4)
+#define		LCDC_HEOCFG0_BLEN_AHB_INCR8		(0x2 << 4)
+#define		LCDC_HEOCFG0_BLEN_AHB_INCR16		(0x3 << 4)
+#define LCDC_HEOCFG0_BLENUV_OFFSET	6
+#define LCDC_HEOCFG0_BLENUV		(0x3 << LCDC_HEOCFG0_BLENUV_OFFSET)
+#define		LCDC_HEOCFG0_BLENUV_AHB_SINGLE		(0x0 << 6)
+#define		LCDC_HEOCFG0_BLENUV_AHB_INCR4		(0x1 << 6)
+#define		LCDC_HEOCFG0_BLENUV_AHB_INCR8		(0x2 << 6)
+#define		LCDC_HEOCFG0_BLENUV_AHB_INCR16		(0x3 << 6)
+#define LCDC_HEOCFG0_DLBO		(0x1 << 8)
+#define LCDC_HEOCFG0_ROTDIS		(0x1 << 12)
+#define LCDC_HEOCFG0_LOCKDIS		(0x1 << 13)
+
+#define ATMEL_LCDC_HEOCFG1	0x02D0
+#define LCDC_HEOCFG1_CLUTEN		(0x1 << 0)
+#define LCDC_HEOCFG1_YUVEN		(0x1 << 1)
+#define LCDC_HEOCFG1_RGBMODE_OFFSET	4
+#define LCDC_HEOCFG1_RGBMODE		(0xf << LCDC_HEOCFG1_RGBMODE_OFFSET)
+#define		LCDC_HEOCFG1_RGBMODE_12BPP_RGB_444	(0x0 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_16BPP_ARGB_4444	(0x1 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_16BPP_RGBA_4444	(0x2 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_16BPP_RGB_565	(0x3 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_16BPP_TRGB_1555	(0x4 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_18BPP_RGB_666	(0x5 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_18BPP_RGB_666_PACKED	(0x6 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_19BPP_TRGB_1666	(0x7 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_19BPP_TRGB_PACKED	(0x8 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_24BPP_RGB_888	(0x9 << 4)
+#define		LCDC_HEOCFG1_RGBMODE_24BPP_RGB_888_PACKED	(0xA << 4)
+#define		LCDC_HEOCFG1_RGBMODE_25BPP_TRGB_1888	(0xB << 4)
+#define		LCDC_HEOCFG1_RGBMODE_32BPP_ARGB_8888	(0xC << 4)
+#define		LCDC_HEOCFG1_RGBMODE_32BPP_RGBA_8888	(0xD << 4)
+#define LCDC_HEOCFG1_CLUTMODE_OFFSET	8
+#define LCDC_HEOCFG1_CLUTMODE		(0x3 << LCDC_HEOCFG1_CLUTMODE_OFFSET)
+#define		LCDC_HEOCFG1_CLUTMODE_1BPP		(0x0 << 8)
+#define		LCDC_HEOCFG1_CLUTMODE_2BPP		(0x1 << 8)
+#define		LCDC_HEOCFG1_CLUTMODE_4BPP		(0x2 << 8)
+#define		LCDC_HEOCFG1_CLUTMODE_8BPP		(0x3 << 8)
+#define LCDC_HEOCFG1_YUVMODE_OFFSET	12
+#define LCDC_HEOCFG1_YUVMODE		(0xf << LCDC_HEOCFG1_YUVMODE_OFFSET)
+#define		LCDC_HEOCFG1_YUVMODE_32BPP_AYCBCR	(0x0 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_16BPP_YCBCR_MODE0	(0x1 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_16BPP_YCBCR_MODE1	(0x2 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_16BPP_YCBCR_MODE2	(0x3 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_16BPP_YCBCR_MODE3	(0x4 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_16BPP_YCBCR_SEMIPLANAR	(0x5 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_16BPP_YCBCR_PLANAR	(0x6 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_12BPP_YCBCR_SEMIPLANAR	(0x7 << 12)
+#define		LCDC_HEOCFG1_YUVMODE_12BPP_YCBCR_PLANAR	(0x8 << 12)
+#define LCDC_HEOCFG1_YUV422ROT		(0x1 << 16)
+#define LCDC_HEOCFG1_YUV422SWP		(0x1 << 17)
+
+#define ATMEL_LCDC_HEOCFG2	0x02D4
+#define LCDC_HEOCFG2_XOFFSET_OFFSET	0
+#define LCDC_HEOCFG2_XOFFSET		(0x7ff << LCDC_HEOCFG2_XOFFSET_OFFSET)
+#define LCDC_HEOCFG2_YOFFSET_OFFSET	16
+#define LCDC_HEOCFG2_YOFFSET		(0x7ff << LCDC_HEOCFG2_YOFFSET_OFFSET)
+
+#define ATMEL_LCDC_HEOCFG3	0x02D8
+#define LCDC_HEOCFG3_XSIZE_OFFSET	0
+#define LCDC_HEOCFG3_XSIZE		(0x7ff << LCDC_HEOCFG3_XSIZE_OFFSET)
+#define LCDC_HEOCFG3_YSIZE_OFFSET	16
+#define LCDC_HEOCFG3_YSIZE		(0x7ff << LCDC_HEOCFG3_YSIZE_OFFSET)
+
+#define ATMEL_LCDC_HEOCFG4	0x02DC
+#define LCDC_HEOCFG4_XMEM_SIZE_OFFSET	0
+#define LCDC_HEOCFG4_XMEM_SIZE		(0x7ff << LCDC_HEOCFG4_XMEM_SIZE_OFFSET)
+#define LCDC_HEOCFG4_YMEM_SIZE_OFFSET	16
+#define LCDC_HEOCFG4_YMEM_SIZE		(0x7ff << LCDC_HEOCFG4_YMEM_SIZE_OFFSET)
+
+#define ATMEL_LCDC_HEOCFG5	0x02E0
+
+#define ATMEL_LCDC_HEOCFG6	0x02E4
+
+#define ATMEL_LCDC_HEOCFG7	0x02E8
+
+#define ATMEL_LCDC_HEOCFG8	0x02EC
+
+#define ATMEL_LCDC_HEOCFG9	0x02F0
+#define LCDC_HEOCFG9_BDEF_OFFSET	0
+#define LCDC_HEOCFG9_BDEF		(0xff << LCDC_HEOCFG9_BDEF_OFFSET)
+#define LCDC_HEOCFG9_GDEF_OFFSET	8
+#define LCDC_HEOCFG9_GDEF		(0xff << LCDC_HEOCFG9_GDEF_OFFSET)
+#define LCDC_HEOCFG9_RDEF_OFFSET	16
+#define LCDC_HEOCFG9_RDEF		(0xff << LCDC_HEOCFG9_RDEF_OFFSET)
+
+#define ATMEL_LCDC_HEOCFG10	0x02F4
+#define LCDC_HEOCFG10_BKEY_OFFSET	0
+#define LCDC_HEOCFG10_BKEY		(0xff << LCDC_HEOCFG10_BKEY_OFFSET)
+#define LCDC_HEOCFG10_GKEY_OFFSET	8
+#define LCDC_HEOCFG10_GKEY		(0xff << LCDC_HEOCFG10_GKEY_OFFSET)
+#define LCDC_HEOCFG10_RKEY_OFFSET	16
+#define LCDC_HEOCFG10_RKEY		(0xff << LCDC_HEOCFG10_RKEY_OFFSET)
+
+#define ATMEL_LCDC_HEOCFG11	0x02F8
+#define LCDC_HEOCFG11_BMASK_OFFSET	0
+#define LCDC_HEOCFG11_BMASK		(0xff << LCDC_HEOCFG11_BMASK_OFFSET)
+#define LCDC_HEOCFG11_GMASK_OFFSET	8
+#define LCDC_HEOCFG11_GMASK		(0xff << LCDC_HEOCFG11_GMASK_OFFSET)
+#define LCDC_HEOCFG11_RMASK_OFFSET	16
+#define LCDC_HEOCFG11_RMASK		(0xff << LCDC_HEOCFG11_RMASK_OFFSET)
+
+#define ATMEL_LCDC_HEOCFG12	0x02FC
+#define LCDC_HEOCFG12_CRKEY		(0x1 << 0)
+#define LCDC_HEOCFG12_INV		(0x1 << 1)
+#define LCDC_HEOCFG12_ITER2BL		(0x1 << 2)
+#define LCDC_HEOCFG12_ITER		(0x1 << 3)
+#define LCDC_HEOCFG12_REVALPHA		(0x1 << 4)
+#define LCDC_HEOCFG12_GAEN		(0x1 << 5)
+#define LCDC_HEOCFG12_LAEN		(0x1 << 6)
+#define LCDC_HEOCFG12_OVR		(0x1 << 7)
+#define LCDC_HEOCFG12_DMA		(0x1 << 8)
+#define LCDC_HEOCFG12_REP		(0x1 << 9)
+#define LCDC_HEOCFG12_DSTKEY		(0x1 << 10)
+#define LCDC_HEOCFG12_VIDPRI		(0x1 << 12)
+#define LCDC_HEOCFG12_GA_OFFSET		16
+#define LCDC_HEOCFG12_GA		(0xff << LCDC_HEOCFG12_GA_OFFSET)
+
+#define ATMEL_LCDC_HEOCFG13	0x0300
+#define LCDC_HEOCFG13_XFACTOR_OFFSET	0
+#define LCDC_HEOCFG13_XFACTOR		(0x1fff << LCDC_HEOCFG13_XFACTOR_OFFSET)
+#define LCDC_HEOCFG13_YFACTOR_OFFSET	16
+#define LCDC_HEOCFG13_YFACTOR		(0x1fff << LCDC_HEOCFG13_YFACTOR_OFFSET)
+#define LCDC_HEOCFG13_SCALEN		(0x1 << 31)
+
+#define ATMEL_LCDC_HEOCFG14	0x0304
+#define LCDC_HEOCFG14_CSCRY_OFFSET	0
+#define LCDC_HEOCFG14_CSCRY		(0x3ff << LCDC_HEOCFG14_CSCRY_OFFSET)
+#define LCDC_HEOCFG14_CSCRU_OFFSET	10
+#define LCDC_HEOCFG14_CSCRU		(0x3ff << LCDC_HEOCFG14_CSCRU_OFFSET)
+#define LCDC_HEOCFG14_CSCRV_OFFSET	20
+#define LCDC_HEOCFG14_CSCRV		(0x3ff << LCDC_HEOCFG14_CSCRV_OFFSET)
+#define LCDC_HEOCFG14_CSCYOFF		(0x1 << 30)
+
+#define ATMEL_LCDC_HEOCFG15	0x0308
+#define LCDC_HEOCFG15_CSCGY_OFFSET	0
+#define LCDC_HEOCFG15_CSCGY		(0x3ff << LCDC_HEOCFG15_CSCGY_OFFSET)
+#define LCDC_HEOCFG15_CSCGU_OFFSET	10
+#define LCDC_HEOCFG15_CSCGU		(0x3ff << LCDC_HEOCFG15_CSCGU_OFFSET)
+#define LCDC_HEOCFG15_CSCGV_OFFSET	20
+#define LCDC_HEOCFG15_CSCGV		(0x3ff << LCDC_HEOCFG15_CSCGV_OFFSET)
+#define LCDC_HEOCFG15_CSCUOFF		(0x1 << 30)
+
+#define ATMEL_LCDC_HEOCFG16	0x030C
+#define LCDC_HEOCFG16_CSCBY_OFFSET	0
+#define LCDC_HEOCFG16_CSCBY		(0x3ff << LCDC_HEOCFG16_CSCBY_OFFSET)
+#define LCDC_HEOCFG16_CSCBU_OFFSET	10
+#define LCDC_HEOCFG16_CSCBU		(0x3ff << LCDC_HEOCFG16_CSCBU_OFFSET)
+#define LCDC_HEOCFG16_CSCBV_OFFSET	20
+#define LCDC_HEOCFG16_CSCBV		(0x3ff << LCDC_HEOCFG16_CSCBV_OFFSET)
+#define LCDC_HEOCFG16_CSCVOFF		(0x1 << 30)
+
+#define ATMEL_LCDC_HCRCHER	0x0340
+#define LCDC_HCRCHER_CHEN		(0x1 << 0)
+#define LCDC_HCRCHER_UPDATEEN		(0x1 << 1)
+#define LCDC_HCRCHER_A2QEN		(0x1 << 2)
+
+#define ATMEL_LCDC_HCRCHDR	0x0344
+#define LCDC_HCRCHDR_CHDIS		(0x1 << 0)
+#define LCDC_HCRCHDR_CHRST		(0x1 << 8)
+
+#define ATMEL_LCDC_HCRCHSR	0x0348
+#define LCDC_HCRCHSR_CHSR		(0x1 << 0)
+#define LCDC_HCRCHSR_UPDATESR		(0x1 << 1)
+#define LCDC_HCRCHSR_A2QSR		(0x1 << 2)
+
+#define ATMEL_LCDC_HCRIER	0x034C
+#define LCDC_HCRIER_DMA			(0x1 << 2)
+#define LCDC_HCRIER_DSCR		(0x1 << 3)
+#define LCDC_HCRIER_ADD			(0x1 << 4)
+#define LCDC_HCRIER_DONE		(0x1 << 5)
+#define LCDC_HCRIER_OVR			(0x1 << 6)
+
+#define ATMEL_LCDC_HCRIDR	0x0350
+#define LCDC_HCRIDR_DMA			(0x1 << 2)
+#define LCDC_HCRIDR_DSCR		(0x1 << 3)
+#define LCDC_HCRIDR_ADD			(0x1 << 4)
+#define LCDC_HCRIDR_DONE		(0x1 << 5)
+#define LCDC_HCRIDR_OVR			(0x1 << 6)
+
+#define ATMEL_LCDC_HCRIMR	0x0354
+#define LCDC_HCRIMR_DMA			(0x1 << 2)
+#define LCDC_HCRIMR_DSCR		(0x1 << 3)
+#define LCDC_HCRIMR_ADD			(0x1 << 4)
+#define LCDC_HCRIMR_DONE		(0x1 << 5)
+#define LCDC_HCRIMR_OVR			(0x1 << 6)
+
+#define ATMEL_LCDC_HCRISR	0x0358
+#define LCDC_HCRISR_DMA			(0x1 << 2)
+#define LCDC_HCRISR_DSCR		(0x1 << 3)
+#define LCDC_HCRISR_ADD			(0x1 << 4)
+#define LCDC_HCRISR_DONE		(0x1 << 5)
+#define LCDC_HCRISR_OVR			(0x1 << 6)
+
+#define ATMEL_LCDC_HCRHEAD	0x035C
+
+#define ATMEL_LCDC_HCRADDR	0x0360
+
+#define ATMEL_LCDC_HCRCTRL	0x0364
+#define LCDC_HCRCTRL_DFETCH		(0x1 << 0)
+#define LCDC_HCRCTRL_LFETCH		(0x1 << 1)
+#define LCDC_HCRCTRL_DMAIEN		(0x1 << 2)
+#define LCDC_HCRCTRL_DSCRIEN		(0x1 << 3)
+#define LCDC_HCRCTRL_ADDIEN		(0x1 << 4)
+#define LCDC_HCRCTRL_DONEIEN		(0x1 << 5)
+
+#define ATMEL_LCDC_HCRNEXT	0x0368
+
+#define ATMEL_LCDC_HCRCFG0	0x036C
+#define LCDC_HCRCFG0_BLEN_OFFSET	4
+#define LCDC_HCRCFG0_BLEN		(0x3 << LCDC_HCRCFG0_BLEN_OFFSET)
+#define		LCDC_HCRCFG0_BLEN_AHB_SINGLE		(0x0 << 4)
+#define		LCDC_HCRCFG0_BLEN_AHB_INCR4		(0x1 << 4)
+#define		LCDC_HCRCFG0_BLEN_AHB_INCR8		(0x2 << 4)
+#define		LCDC_HCRCFG0_BLEN_AHB_INCR16		(0x3 << 4)
+#define LCDC_HCRCFG0_DLBO		(0x1 << 8)
+
+#define ATMEL_LCDC_HCRCFG1	0x0370
+#define LCDC_HCRCFG1_CLUTEN		(0x1 << 0)
+#define LCDC_HCRCFG1_RGBMODE_OFFSET	4
+#define LCDC_HCRCFG1_RGBMODE		(0xf << LCDC_HCRCFG1_RGBMODE_OFFSET)
+#define		LCDC_HCRCFG1_RGBMODE_12BPP_RGB_444	(0x0 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_16BPP_ARGB_4444	(0x1 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_16BPP_RGBA_4444	(0x2 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_16BPP_RGB_565	(0x3 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_16BPP_TRGB_1555	(0x4 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_18BPP_RGB_666	(0x5 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_18BPP_RGB_666_PACKED	(0x6 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_19BPP_TRGB_1666	(0x7 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_19BPP_TRGB_PACKED	(0x8 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_24BPP_RGB_888	(0x9 << 4)
+#define		LCDC_HCRCFG1_RGBMODE_24BPP_RGB_888_PACKED	(0xA << 4)
+#define		LCDC_HCRCFG1_RGBMODE_25BPP_TRGB_1888	(0xB << 4)
+#define		LCDC_HCRCFG1_RGBMODE_32BPP_ARGB_8888	(0xC << 4)
+#define		LCDC_HCRCFG1_RGBMODE_32BPP_RGBA_8888	(0xD << 4)
+#define LCDC_HCRCFG1_CLUTMODE_OFFSET	8
+#define LCDC_HCRCFG1_CLUTMODE		(0x3 << LCDC_HCRCFG1_CLUTMODE_OFFSET)
+#define		LCDC_HCRCFG1_CLUTMODE_1BPP		(0x0 << 8)
+#define		LCDC_HCRCFG1_CLUTMODE_2BPP		(0x1 << 8)
+#define		LCDC_HCRCFG1_CLUTMODE_4BPP		(0x2 << 8)
+#define		LCDC_HCRCFG1_CLUTMODE_8BPP		(0x3 << 8)
+
+#define ATMEL_LCDC_HCRCFG2	0x0374
+#define LCDC_HCRCFG2_XOFFSET_OFFSET	0
+#define LCDC_HCRCFG2_XOFFSET		(0x7ff << LCDC_HCRCFG2_XOFFSET_OFFSET)
+#define LCDC_HCRCFG2_YOFFSET_OFFSET	16
+#define LCDC_HCRCFG2_YOFFSET		(0x7ff << LCDC_HCRCFG2_YOFFSET_OFFSET)
+
+#define ATMEL_LCDC_HCRCFG3	0x0378
+#define LCDC_HCRCFG3_XSIZE_OFFSET	0
+#define LCDC_HCRCFG3_XSIZE		(0x7f << LCDC_HCRCFG3_XSIZE_OFFSET)
+#define LCDC_HCRCFG3_YSIZE_OFFSET	16
+#define LCDC_HCRCFG3_YSIZE		(0x7f << LCDC_HCRCFG3_YSIZE_OFFSET)
+
+#define ATMEL_LCDC_HCRCFG4	0x037C
+
+#define ATMEL_LCDC_HCRCFG6	0x0384
+#define LCDC_HCRCFG6_BDEF_OFFSET	0
+#define LCDC_HCRCFG6_BDEF		(0xff << LCDC_HCRCFG6_BDEF_OFFSET)
+#define LCDC_HCRCFG6_GDEF_OFFSET	8
+#define LCDC_HCRCFG6_GDEF		(0xff << LCDC_HCRCFG6_GDEF_OFFSET)
+#define LCDC_HCRCFG6_RDEF_OFFSET	16
+#define LCDC_HCRCFG6_RDEF		(0xff << LCDC_HCRCFG6_RDEF_OFFSET)
+
+#define ATMEL_LCDC_HCRCFG7	0x0388
+#define LCDC_HCRCFG7_BKEY_OFFSET	0
+#define LCDC_HCRCFG7_BKEY		(0xff << LCDC_HCRCFG7_BKEY_OFFSET)
+#define LCDC_HCRCFG7_GKEY_OFFSET	8
+#define LCDC_HCRCFG7_GKEY		(0xff << LCDC_HCRCFG7_GKEY_OFFSET)
+#define LCDC_HCRCFG7_RKEY_OFFSET	16
+#define LCDC_HCRCFG7_RKEY		(0xff << LCDC_HCRCFG7_RKEY_OFFSET)
+
+#define ATMEL_LCDC_HCRCFG8	0x038C
+#define LCDC_HCRCFG8_BMASK_OFFSET	0
+#define LCDC_HCRCFG8_BMASK		(0xff << LCDC_HCRCFG8_BMASK_OFFSET)
+#define LCDC_HCRCFG8_GMASK_OFFSET	8
+#define LCDC_HCRCFG8_GMASK		(0xff << LCDC_HCRCFG8_GMASK_OFFSET)
+#define LCDC_HCRCFG8_RMASK_OFFSET	16
+#define LCDC_HCRCFG8_RMASK		(0xff << LCDC_HCRCFG8_RMASK_OFFSET)
+
+#define ATMEL_LCDC_HCRCFG9	0x0390
+#define LCDC_HCRCFG9_CRKEY		(0x1 << 0)
+#define LCDC_HCRCFG9_INV		(0x1 << 1)
+#define LCDC_HCRCFG9_ITER2BL		(0x1 << 2)
+#define LCDC_HCRCFG9_ITER		(0x1 << 3)
+#define LCDC_HCRCFG9_REVALPHA		(0x1 << 4)
+#define LCDC_HCRCFG9_GAEN		(0x1 << 5)
+#define LCDC_HCRCFG9_LAEN		(0x1 << 6)
+#define LCDC_HCRCFG9_OVR		(0x1 << 7)
+#define LCDC_HCRCFG9_DMA		(0x1 << 8)
+#define LCDC_HCRCFG9_REP		(0x1 << 9)
+#define LCDC_HCRCFG9_DSTKEY		(0x1 << 10)
+#define LCDC_HCRCFG9_GA_OFFSET		16
+#define LCDC_HCRCFG9_GA_Msk		(0xff << LCDC_HCRCFG9_GA_OFFSET)
+
+#define ATMEL_LCDC_BASECLUT	0x400
+#define ATMEL_LCDC2_BASECLUT	0x600
+#define LCDC_BASECLUT_BCLUT_OFFSET	0
+#define LCDC_BASECLUT_BCLUT		(0xff << LCDC_BASECLUT_BCLUT_OFFSET)
+#define LCDC_BASECLUT_GCLUT_OFFSET	8
+#define LCDC_BASECLUT_GCLUT		(0xff << LCDC_BASECLUT_GCLUT_OFFSET)
+#define LCDC_BASECLUT_RCLUT_OFFSET	16
+#define LCDC_BASECLUT_RCLUT		(0xff << LCDC_BASECLUT_RCLUT_OFFSET)
+
+#define ATMEL_LCDC_OVR1CLUT	0x800
+#define ATMEL_LCDC2_OVR1CLUT	0xa00
+#define LCDC_OVR1CLUT_BCLUT_OFFSET	0
+#define LCDC_OVR1CLUT_BCLUT		(0xff << LCDC_OVR1CLUT_BCLUT_OFFSET)
+#define LCDC_OVR1CLUT_GCLUT_OFFSET	8
+#define LCDC_OVR1CLUT_GCLUT		(0xff << LCDC_OVR1CLUT_GCLUT_OFFSET)
+#define LCDC_OVR1CLUT_RCLUT_OFFSET	16
+#define LCDC_OVR1CLUT_RCLUT		(0xff << LCDC_OVR1CLUT_RCLUT_OFFSET)
+#define LCDC_OVR1CLUT_ACLUT_OFFSET	24
+#define LCDC_OVR1CLUT_ACLUT		(0xff << LCDC_OVR1CLUT_ACLUT_OFFSET)
+
+#define ATMEL_LCDC_OVR2CLUT	0xe00
+#define LCDC_OVR2CLUT_BCLUT_OFFSET	0
+#define LCDC_OVR2CLUT_BCLUT		(0xff << LCDC_OVR2CLUT_BCLUT_OFFSET)
+#define LCDC_OVR2CLUT_GCLUT_OFFSET	8
+#define LCDC_OVR2CLUT_GCLUT		(0xff << LCDC_OVR2CLUT_GCLUT_OFFSET)
+#define LCDC_OVR2CLUT_RCLUT_OFFSET	16
+#define LCDC_OVR2CLUT_RCLUT		(0xff << LCDC_OVR2CLUT_RCLUT_OFFSET)
+#define LCDC_OVR2CLUT_ACLUT_OFFSET	24
+#define LCDC_OVR2CLUT_ACLUT		(0xff << LCDC_OVR2CLUT_ACLUT_OFFSET)
+
+#define ATMEL_LCDC_HEOCLUT	0x1000
+#define ATMEL_LCDC2_HEOCLUT	0x1200
+#define LCDC_HEOCLUT_BCLUT_OFFSET	0
+#define LCDC_HEOCLUT_BCLUT		(0xff << LCDC_HEOCLUT_BCLUT_OFFSET)
+#define LCDC_HEOCLUT_GCLUT_OFFSET	8
+#define LCDC_HEOCLUT_GCLUT		(0xff << LCDC_HEOCLUT_GCLUT_OFFSET)
+#define LCDC_HEOCLUT_RCLUT_OFFSET	16
+#define LCDC_HEOCLUT_RCLUT		(0xff << LCDC_HEOCLUT_RCLUT_OFFSET)
+#define LCDC_HEOCLUT_ACLUT_OFFSET	24
+#define LCDC_HEOCLUT_ACLUT		(0xff << LCDC_HEOCLUT_ACLUT_OFFSET)
+
+#define ATMEL_LCDC_HCRCLUT	0x1400
+#define ATMEL_LCDC2_HCRCLUT	0x1600
+#define LCDC_HCRCLUT_BCLUT_OFFSET	0
+#define LCDC_HCRCLUT_BCLUT		(0xff << LCDC_HCRCLUT_BCLUT_OFFSET)
+#define LCDC_HCRCLUT_GCLUT_OFFSET	8
+#define LCDC_HCRCLUT_GCLUT		(0xff << LCDC_HCRCLUT_GCLUT_OFFSET)
+#define LCDC_HCRCLUT_RCLUT_OFFSET	16
+#define LCDC_HCRCLUT_RCLUT		(0xff << LCDC_HCRCLUT_RCLUT_OFFSET)
+#define LCDC_HCRCLUT_ACLUT_OFFSET	24
+#define LCDC_HCRCLUT_ACLUT		(0xff << LCDC_HCRCLUT_ACLUT_OFFSET)
+
+/* Base layer CLUT */
+#define ATMEL_HLCDC_LUT			0x0400
+
+
+#endif /* __MACH_ATMEL_HLCDC4_H__ */
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index fcf9425..6d6b08f 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -9,6 +9,10 @@ config DRIVER_VIDEO_ATMEL
 	bool "Atmel LCDC framebuffer driver"
 	depends on ARCH_AT91
 
+config DRIVER_VIDEO_ATMEL_HLCD
+	bool "Atmel HLCDC framebuffer driver"
+	depends on ARCH_AT91
+
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
 	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 724ef99..7429141 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_VIDEO) += fb.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
+obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += stm.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX) += imx.o
 obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
new file mode 100644
index 0000000..78a737d
--- /dev/null
+++ b/drivers/video/atmel_hlcdfb.c
@@ -0,0 +1,297 @@
+/*
+ * Driver for AT91/AT32 LCD Controller
+ *
+ * Copyright (C) 2007 Atmel Corporation
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <mach/hardware.h>
+#include <mach/atmel_hlcdc.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
+#include <errno.h>
+#include <asm/mmu.h>
+
+#include "atmel_lcdfb.h"
+
+#define ATMEL_LCDC_CVAL_DEFAULT		0xc8
+
+static void atmel_hlcdfb_stop(struct atmel_lcdfb_info *sinfo, u32 flags)
+{
+	/* Disable DISP signal */
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDDIS, LCDC_LCDDIS_DISPDIS);
+	while ((lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_DISPSTS))
+		mdelay(1);
+	/* Disable synchronization */
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDDIS, LCDC_LCDDIS_SYNCDIS);
+	while ((lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_LCDSTS))
+		mdelay(1);
+	/* Disable pixel clock */
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDDIS, LCDC_LCDDIS_CLKDIS);
+	while ((lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_CLKSTS))
+		mdelay(1);
+	/* Disable PWM */
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDDIS, LCDC_LCDDIS_PWMDIS);
+	while ((lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_PWMSTS))
+		mdelay(1);
+
+	if (!(flags & ATMEL_LCDC_STOP_NOWAIT))
+		/* Wait for the end of DMA transfer */
+		while (!(lcdc_readl(sinfo, ATMEL_LCDC_BASEISR) & LCDC_BASEISR_DMA))
+			mdelay(10);
+		/*FIXME: OVL DMA? */
+}
+
+static void atmel_hlcdfb_start(struct atmel_lcdfb_info *sinfo)
+{
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDEN, LCDC_LCDEN_CLKEN);
+	while (!(lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_CLKSTS))
+		mdelay(1);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDEN, LCDC_LCDEN_SYNCEN);
+	while (!(lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_LCDSTS))
+		mdelay(1);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDEN, LCDC_LCDEN_DISPEN);
+	while (!(lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_DISPSTS))
+		mdelay(1);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDEN, LCDC_LCDEN_PWMEN);
+	while (!(lcdc_readl(sinfo, ATMEL_LCDC_LCDSR) & LCDC_LCDSR_PWMSTS))
+		mdelay(1);
+}
+
+struct atmel_hlcd_dma_desc {
+	u32	address;
+	u32	control;
+	u32	next;
+};
+
+static void atmel_hlcdfb_update_dma(struct fb_info *info)
+{
+	struct atmel_lcdfb_info *sinfo = info->priv;
+	unsigned long dma_addr;
+	struct atmel_hlcd_dma_desc *desc;
+
+	dma_addr = (u32)info->screen_base;
+	dma_addr &= ~3UL;
+
+	/* Setup the DMA descriptor, this descriptor will loop to itself */
+	desc = sinfo->dma_desc;
+
+	desc->address = dma_addr;
+	/* Disable DMA transfer interrupt & descriptor loaded interrupt. */
+	desc->control = LCDC_BASECTRL_ADDIEN | LCDC_BASECTRL_DSCRIEN
+			| LCDC_BASECTRL_DMAIEN | LCDC_BASECTRL_DFETCH;
+	desc->next = (u32)desc;
+
+	lcdc_writel(sinfo, ATMEL_LCDC_BASEADDR, desc->address);
+	lcdc_writel(sinfo, ATMEL_LCDC_BASECTRL, desc->control);
+	lcdc_writel(sinfo, ATMEL_LCDC_BASENEXT, desc->next);
+	lcdc_writel(sinfo, ATMEL_LCDC_BASECHER, LCDC_BASECHER_CHEN | LCDC_BASECHER_UPDATEEN);
+}
+
+static void atmel_hlcdfb_limit_screeninfo(struct fb_videomode *mode)
+{
+	u32 hbpw, hfpw;
+
+	if (cpu_is_at91sam9x5()) {
+		hbpw = LCDC_LCDCFG3_HBPW;
+		hfpw = LCDC_LCDCFG3_HFPW;
+	} else {
+		hbpw = LCDC2_LCDCFG3_HBPW;
+		hfpw = LCDC2_LCDCFG3_HFPW;
+	}
+
+	/* Saturate vertical and horizontal timings at maximum values */
+	mode->vsync_len = min_t(u32, mode->vsync_len,
+			(LCDC_LCDCFG1_VSPW >> LCDC_LCDCFG1_VSPW_OFFSET) + 1);
+	mode->upper_margin = min_t(u32, mode->upper_margin,
+			(LCDC_LCDCFG2_VFPW >> LCDC_LCDCFG2_VFPW_OFFSET) + 1);
+	mode->lower_margin = min_t(u32, mode->lower_margin,
+			LCDC_LCDCFG2_VBPW >> LCDC_LCDCFG2_VBPW_OFFSET);
+	mode->right_margin = min_t(u32, mode->right_margin,
+			(hbpw >> LCDC_LCDCFG3_HBPW_OFFSET) + 1);
+	mode->hsync_len = min_t(u32, mode->hsync_len,
+			(LCDC_LCDCFG1_HSPW >> LCDC_LCDCFG1_HSPW_OFFSET) + 1);
+	mode->left_margin = min_t(u32, mode->left_margin,
+			(hfpw >> LCDC_LCDCFG3_HFPW_OFFSET) + 1);
+}
+
+static u32 atmel_hlcdfb_get_rgbmode(struct fb_info *info)
+{
+	u32 value = 0;
+
+	switch (info->bits_per_pixel) {
+	case 1:
+		value = LCDC_BASECFG1_CLUTMODE_1BPP | LCDC_BASECFG1_CLUTEN;
+		break;
+	case 2:
+		value = LCDC_BASECFG1_CLUTMODE_2BPP | LCDC_BASECFG1_CLUTEN;
+		break;
+	case 4:
+		value = LCDC_BASECFG1_CLUTMODE_4BPP | LCDC_BASECFG1_CLUTEN;
+		break;
+	case 8:
+		value = LCDC_BASECFG1_CLUTMODE_8BPP | LCDC_BASECFG1_CLUTEN;
+		break;
+	case 12:
+		value = LCDC_BASECFG1_RGBMODE_12BPP_RGB_444;
+		break;
+	case 16:
+		if (info->transp.offset)
+			value = LCDC_BASECFG1_RGBMODE_16BPP_ARGB_4444;
+		else
+			value = LCDC_BASECFG1_RGBMODE_16BPP_RGB_565;
+		break;
+	case 18:
+		value = LCDC_BASECFG1_RGBMODE_18BPP_RGB_666_PACKED;
+		break;
+	case 24:
+		value = LCDC_BASECFG1_RGBMODE_24BPP_RGB_888_PACKED;
+		break;
+	case 32:
+		value = LCDC_BASECFG1_RGBMODE_32BPP_ARGB_8888;
+		break;
+	default:
+		dev_err(&info->dev, "Cannot set video mode for %dbpp\n",
+			info->bits_per_pixel);
+		break;
+	}
+
+	return value;
+}
+
+static void atmel_hlcdfb_setup_core_base(struct fb_info *info)
+{
+	struct atmel_lcdfb_info *sinfo = info->priv;
+	struct atmel_lcdfb_platform_data *pdata = sinfo->pdata;
+	struct fb_videomode *mode = info->mode;
+	unsigned long value;
+	unsigned long clk_value_khz;
+
+	dev_dbg(&info->dev, "%s:\n", __func__);
+	/* Set pixel clock */
+	clk_value_khz = clk_get_rate(sinfo->lcdc_clk) / 1000;
+
+	value = DIV_ROUND_CLOSEST(clk_value_khz, PICOS2KHZ(mode->pixclock));
+
+	if (value < 1) {
+		dev_notice(&info->dev, "using system clock as pixel clock\n");
+		value = LCDC_LCDCFG0_CLKPWMSEL;
+	} else {
+		mode->pixclock = KHZ2PICOS(clk_value_khz / value);
+		dev_dbg(&info->dev, "  updated pixclk:     %lu KHz\n",
+				PICOS2KHZ(mode->pixclock));
+		value = value - 2;
+		dev_dbg(&info->dev, "  * programming CLKDIV = 0x%08lx\n",
+					value);
+		value = (value << LCDC_LCDCFG0_CLKDIV_OFFSET);
+	}
+	value |= LCDC_LCDCFG0_CGDISBASE;
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG0, value);
+
+	/* Initialize control register 5 */
+	/* In 9x5, the default_lcdcon2 will use for LCDCFG5 */
+	value = pdata->default_lcdcon2;
+	value |= (sinfo->guard_time << LCDC_LCDCFG5_GUARDTIME_OFFSET)
+		| LCDC_LCDCFG5_DISPDLY
+		| LCDC_LCDCFG5_VSPDLYS;
+
+	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
+		value |= LCDC_LCDCFG5_HSPOL;
+	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
+		value |= LCDC_LCDCFG5_VSPOL;
+
+	dev_dbg(&info->dev, "  * LCDC_LCDCFG5 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG5, value);
+
+	/* Vertical & Horizontal Timing */
+	value = (mode->vsync_len - 1) << LCDC_LCDCFG1_VSPW_OFFSET;
+	value |= (mode->hsync_len - 1) << LCDC_LCDCFG1_HSPW_OFFSET;
+	dev_dbg(&info->dev, "  * LCDC_LCDCFG1 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG1, value);
+
+	value = (mode->upper_margin) << LCDC_LCDCFG2_VBPW_OFFSET;
+	value |= (mode->lower_margin - 1) << LCDC_LCDCFG2_VFPW_OFFSET;
+	dev_dbg(&info->dev, "  * LCDC_LCDCFG2 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG2, value);
+
+	value = (mode->left_margin - 1) << LCDC_LCDCFG3_HBPW_OFFSET;
+	value |= (mode->right_margin - 1) << LCDC_LCDCFG3_HFPW_OFFSET;
+	dev_dbg(&info->dev, "  * LCDC_LCDCFG3 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG3, value);
+
+	/* Display size */
+	value = (mode->yres - 1) << LCDC_LCDCFG4_RPF_OFFSET;
+	value |= (mode->xres - 1) << LCDC_LCDCFG4_PPL_OFFSET;
+	dev_dbg(&info->dev, "  * LCDC_LCDCFG4 = %08lx\n", value);
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG4, value);
+
+	lcdc_writel(sinfo, ATMEL_LCDC_BASECFG0, LCDC_BASECFG0_BLEN_AHB_INCR16 | LCDC_BASECFG0_DLBO);
+	lcdc_writel(sinfo, ATMEL_LCDC_BASECFG1, atmel_hlcdfb_get_rgbmode(info));
+	lcdc_writel(sinfo, ATMEL_LCDC_BASECFG2, 0);
+	lcdc_writel(sinfo, ATMEL_LCDC_BASECFG3, 0);	/* Default color */
+	lcdc_writel(sinfo, ATMEL_LCDC_BASECFG4, LCDC_BASECFG4_DMA);
+
+	/* Disable all interrupts */
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDIDR, ~0UL);
+	lcdc_writel(sinfo, ATMEL_LCDC_BASEIDR, ~0UL);
+	/* Enable BASE LAYER overflow interrupts, if want to enable DMA interrupt, also need set it at LCDC_BASECTRL reg */
+	lcdc_writel(sinfo, ATMEL_LCDC_BASEIER, LCDC_BASEIER_OVR);
+	/* FIXME: Let video-driver register a callback */
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDIER, LCDC_LCDIER_FIFOERRIE |
+				LCDC_LCDIER_BASEIE | LCDC_LCDIER_HEOIE);
+}
+
+
+static void atmel_hlcdfb_init_contrast(struct atmel_lcdfb_info *sinfo)
+{
+	/* have some default contrast/backlight settings */
+	lcdc_writel(sinfo, ATMEL_LCDC_LCDCFG6, LCDC_LCDCFG6_PWMPOL |
+		(ATMEL_LCDC_CVAL_DEFAULT << LCDC_LCDCFG6_PWMCVAL_OFFSET));
+}
+
+struct atmel_lcdfb_devdata atmel_hlcdfb_data = {
+	.start = atmel_hlcdfb_start,
+	.stop = atmel_hlcdfb_stop,
+	.update_dma = atmel_hlcdfb_update_dma,
+	.setup_core = atmel_hlcdfb_setup_core_base,
+	.init_contrast = atmel_hlcdfb_init_contrast,
+	.limit_screeninfo = atmel_hlcdfb_limit_screeninfo,
+	.dma_desc_size = sizeof(struct atmel_hlcd_dma_desc),
+};
+
+static int atmel_hlcdc_probe(struct device_d *dev)
+{
+	return atmel_lcdc_register(dev, &atmel_hlcdfb_data);
+}
+
+static struct driver_d atmel_hlcdc_driver = {
+	.name	= "atmel_hlcdfb",
+	.probe	= atmel_hlcdc_probe,
+};
+
+static int atmel_hlcdc_init(void)
+{
+	return platform_driver_register(&atmel_hlcdc_driver);
+}
+device_initcall(atmel_hlcdc_init);
diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
index 6c53dd4..ea4c7e6 100644
--- a/drivers/video/atmel_lcdfb.h
+++ b/drivers/video/atmel_lcdfb.h
@@ -11,7 +11,6 @@ struct atmel_lcdfb_devdata {
 	void (*setup_core)(struct fb_info *info);
 	void (*init_contrast)(struct atmel_lcdfb_info *sinfo);
 	void (*limit_screeninfo)(struct fb_videomode *mode);
-	int fbinfo_flags;
 	int dma_desc_size;
 };
 
@@ -27,6 +26,7 @@ struct atmel_lcdfb_info {
 
 	struct atmel_lcdfb_platform_data *pdata;
 	struct atmel_lcdfb_devdata *dev_data;
+	void			*dma_desc;
 };
 
 #define lcdc_readl(sinfo, reg)		__raw_readl((sinfo)->mmio+(reg))
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 528bcd8..bed540d 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -290,6 +290,9 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 
 	atmel_lcdfb_start_clock(sinfo);
 
+	if (data->dma_desc_size)
+		sinfo->dma_desc = dma_alloc_coherent(data->dma_desc_size);
+
 	ret = register_framebuffer(info);
 	if (ret != 0) {
 		dev_err(dev, "Failed to register framebuffer\n");
@@ -299,6 +302,8 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	return ret;
 
 stop_clk:
+	if (sinfo->dma_desc)
+		free(sinfo->dma_desc);
 	atmel_lcdfb_stop_clock(sinfo);
 	clk_put(sinfo->lcdc_clk);
 put_bus_clk:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
