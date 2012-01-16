Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rml7A-0001WC-F9
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 11:52:41 +0000
Date: Mon, 16 Jan 2012 12:52:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120116115228.GR5446@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317FAA5B@DBDE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89317FAA5B@DBDE01.ent.ti.com>
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
Subject: Re: [PATCH] omap3 towards thumb2 support
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jan 16, 2012 at 11:30:23AM +0000, Premi, Sanjeev wrote:
> > -----Original Message-----
> > From: barebox-bounces@lists.infradead.org 
> > [mailto:barebox-bounces@lists.infradead.org] On Behalf Of Sascha Hauer
> > Sent: Monday, January 16, 2012 3:48 PM
> > To: barebox@lists.infradead.org
> > Subject: [PATCH] omap3 towards thumb2 support
> > 
> > The following patches rework the omap3 support to be thumb2 safe.
> > The initialisation order is changed so that more stuff can be
> > done in a regular C environment rather than in lowlevel time.
> > 
> > Together with git://git.pengutronix.de/git/barebox.git work/thumb2
> > the beagle board Xload config now fits into 34k.
> > 
> > The following changes since commit 
> > be07ecb5c50e007d71f75145938c66bd04960b43:
> > 
> >   omap343xdsp: move to arch/arm/boards/omap343xdsp 
> > (2012-01-16 10:28:00 +0100)
> > 
> > are available in the git repository at:
> >   git://git.pengutronix.de/git/barebox.git work/omap3
> > 
> > Sascha Hauer (10):
> 
> I was able to pull in your branch and encountered a minor
> issue - fixed by the patch at end of this mail.
> 
> How can I enable thumb2? Didn't find aything obvious in
> omap3530_beagle_xload_defconfig.

Did you merge the work/thumb2 branch into your branch? Then you should
find THUMB2_BAREBOX in menuconfig.

> 
> ~sanjeev
> 
> From 60293bdf05090245456931061895470a8900ca9d Mon Sep 17 00:00:00 2001
> From: Sanjeev Premi <premi@ti.com>
> Date: Mon, 16 Jan 2012 16:51:04 +0530
> Subject: [PATCH] ARM OMAP3: Fix compile errors
> 
> Encountered this error wile compiling for omap3evm:
>   CC      arch/arm/boards/omap3evm/board.o
> arch/arm/boards/omap3evm/board.c:62:24: fatal error:
>  mach/board.h: No such file or directory compilation terminated.
> 
> File mach/board.h doesn't exist since this commit:
>   be2559e : ARM omap3: move board_init to pure_initcall
> 
> Fixed the same for omap343xsdp as well.

Thanks for catching this. Will update my series.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
