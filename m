Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmklm-00067F-59
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 11:30:37 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Mon, 16 Jan 2012 11:30:23 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317FAA5B@DBDE01.ent.ti.com>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: RE: [PATCH] omap3 towards thumb2 support
To: Sascha Hauer <s.hauer@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of Sascha Hauer
> Sent: Monday, January 16, 2012 3:48 PM
> To: barebox@lists.infradead.org
> Subject: [PATCH] omap3 towards thumb2 support
> 
> The following patches rework the omap3 support to be thumb2 safe.
> The initialisation order is changed so that more stuff can be
> done in a regular C environment rather than in lowlevel time.
> 
> Together with git://git.pengutronix.de/git/barebox.git work/thumb2
> the beagle board Xload config now fits into 34k.
> 
> The following changes since commit 
> be07ecb5c50e007d71f75145938c66bd04960b43:
> 
>   omap343xdsp: move to arch/arm/boards/omap343xdsp 
> (2012-01-16 10:28:00 +0100)
> 
> are available in the git repository at:
>   git://git.pengutronix.de/git/barebox.git work/omap3
> 
> Sascha Hauer (10):

I was able to pull in your branch and encountered a minor
issue - fixed by the patch at end of this mail.

How can I enable thumb2? Didn't find aything obvious in
omap3530_beagle_xload_defconfig.

~sanjeev

From 60293bdf05090245456931061895470a8900ca9d Mon Sep 17 00:00:00 2001
From: Sanjeev Premi <premi@ti.com>
Date: Mon, 16 Jan 2012 16:51:04 +0530
Subject: [PATCH] ARM OMAP3: Fix compile errors

Encountered this error wile compiling for omap3evm:
  CC      arch/arm/boards/omap3evm/board.o
arch/arm/boards/omap3evm/board.c:62:24: fatal error:
 mach/board.h: No such file or directory compilation terminated.

File mach/board.h doesn't exist since this commit:
  be2559e : ARM omap3: move board_init to pure_initcall

Fixed the same for omap343xsdp as well.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/boards/omap343xdsp/board.c |    1 -
 arch/arm/boards/omap3evm/board.c    |    1 -
 2 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 4ad6f13..b5174f3 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -61,7 +61,6 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
-#include <mach/board.h>
 #include <errno.h>
 
 /******************** Board Boot Time *******************/
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index fdd5227..21d2504 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -59,7 +59,6 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
-#include <mach/board.h>
 #include <errno.h>
 
 
-- 
1.7.0.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
