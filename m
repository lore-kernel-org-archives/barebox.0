Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMiup-0000iS-GL
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 14:07:19 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMiul-00073R-Oe
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:07:12 -0500
Date: Mon, 21 Dec 2009 09:06:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210905190.17143@localhost>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Remove PPC support for IDE.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Based on a suggestion from S. Hauer, we don't currently need any IDE
support, but we can always add it back later if we choose.  There
don't appear to be any other IDE-related source files in the tree.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/arch/ppc/mach-mpc5xxx/ide.c b/arch/ppc/mach-mpc5xxx/ide.c
deleted file mode 100644
index 29b99f6..0000000
--- a/arch/ppc/mach-mpc5xxx/ide.c
+++ /dev/null
@@ -1,88 +0,0 @@
-/*
- * (C) Copyright 2004
- * Pierre AUBERT, Staubli Faverges, <p.aubert@staubli.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- * Init is derived from Linux code.
- */
-#include <common.h>
-
-#ifdef CFG_CMD_IDE
-#include <mpc5xxx.h>
-
-DECLARE_GLOBAL_DATA_PTR;
-
-#define CALC_TIMING(t) (t + period - 1) / period
-
-#ifdef CONFIG_IDE_RESET
-extern void init_ide_reset (void);
-#endif
-
-int ide_preinit (void)
-{
-	long period, t0, t1, t2_8, t2_16, t4, ta;
-	vu_long reg;
-	struct mpc5xxx_sdma *psdma = (struct mpc5xxx_sdma *) MPC5XXX_SDMA;
-
-	reg = *(vu_long *) MPC5XXX_GPS_PORT_CONFIG;
-#if defined(CONFIG_TOTAL5200)
-	/* ATA cs0/1 on i2c2 clk/io */
-	reg = (reg & ~0x03000000ul) | 0x02000000ul;
-#else
-	/* ATA cs0/1 on Local Plus cs4/5 */
-	reg = (reg & ~0x03000000ul) | 0x01000000ul;
-#endif	/* CONFIG_TOTAL5200 */
-	*(vu_long *) MPC5XXX_GPS_PORT_CONFIG = reg;
-
-	/* All sample codes do that... */
-	*(vu_long *) MPC5XXX_ATA_SHARE_COUNT = 0;
-
-	/* Configure and reset host */
-	*(vu_long *) MPC5XXX_ATA_HOST_CONFIG = MPC5xxx_ATA_HOSTCONF_IORDY |
-		MPC5xxx_ATA_HOSTCONF_SMR | MPC5xxx_ATA_HOSTCONF_FR;
-	udelay (10);
-	*(vu_long *) MPC5XXX_ATA_HOST_CONFIG = MPC5xxx_ATA_HOSTCONF_IORDY;
-
-	/* Disable prefetch on Commbus */
-	psdma->PtdCntrl |= 1;
-
-	/* Init timings : we use PIO mode 0 timings */
-	period = 1000000000 / gd->ipb_clk;	/* period in ns */
-
-	t0 = CALC_TIMING (600);
-	t2_8 = CALC_TIMING (290);
-	t2_16 = CALC_TIMING (165);
-	reg = (t0 << 24) | (t2_8 << 16) | (t2_16 << 8);
-	*(vu_long *) MPC5XXX_ATA_PIO1 = reg;
-
-	t4 = CALC_TIMING (30);
-	t1 = CALC_TIMING (70);
-	ta = CALC_TIMING (35);
-	reg = (t4 << 24) | (t1 << 16) | (ta << 8);
-
-	*(vu_long *) MPC5XXX_ATA_PIO2 = reg;
-
-#ifdef CONFIG_IDE_RESET
-	init_ide_reset ();
-#endif /* CONFIG_IDE_RESET */
-
-	return (0);
-}
-#endif /* CFG_CMD_IDE */

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
