Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAoj7-00083q-Qw
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 18:58:31 +0000
Date: Tue, 26 Oct 2010 20:58:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101026185827.GF6017@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
	<201010261120.30875.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010261120.30875.jbe@pengutronix.de>
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
Subject: Re: more patches for next
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 26, 2010 at 11:20:30AM +0200, Juergen Beisert wrote:
> Some of these changes lead into:
> 
> [...]
>   CC      drivers/serial/serial_imx.o
> In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/imx27-regs.h:222:1: warning: "ESDMISC_RST" redefined
> In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
>                  from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/esdctl.h:37:1: warning: this is the location of the previous definition
> In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/imx27-regs.h:224:1: warning: "ESDMISC_MDDR_DL_RST" redefined
> In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
>                  from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/esdctl.h:40:1: warning: this is the location of the previous definition
> In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/imx27-regs.h:225:1: warning: "ESDMISC_MDDR_MDIS" redefined
> In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
>                  from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/esdctl.h:41:1: warning: this is the location of the previous definition
> In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/imx27-regs.h:226:1: warning: "ESDMISC_LHD" redefined
> In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
>                  from arch/arm/mach-imx/include/mach/imx-regs.h:47,
>                  from drivers/serial/serial_imx.c:21:
> arch/arm/mach-imx/include/mach/esdctl.h:42:1: warning: this is the location of the previous definition
> [...]
> 
> Tested with the "pcm038_defconfig".


The good thing is that all defines even if written differently are the
same. The following fixes this:


From cc406226ebddd0ce791faba083272a006b73730f Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Oct 2010 20:56:17 +0200
Subject: [PATCH] ARM i.MX27: remove duplicated defines

The esdctl regs are now in a seperate header file, so remove the
duplicates from imx27-regs.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx27-regs.h |    8 --------
 1 files changed, 0 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 0fa954d..e87d5bf 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -219,14 +219,6 @@
 #define ESDCFG_TWTR		(1 << 20)
 #define ESDCFG_TXP(x)		(((x) & 0x3) << 21)
 
-#define ESDMISC_RST		(1 << 1)
-#define ESDMISC_MDDREN		(1 << 2)
-#define ESDMISC_MDDR_DL_RST	(1 << 3)
-#define ESDMISC_MDDR_MDIS	(1 << 4)
-#define ESDMISC_LHD		(1 << 5)
-#define ESDMISC_MA10_SHARE	(1 << 6)
-#define ESDMISC_SDRAM_RDY	(1 << 6)
-
 /*
  * Definitions for the clocksource driver
  */
-- 
1.7.2.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
