Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlG0A-00007G-Fp
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 06:50:27 +0000
Date: Tue, 17 Aug 2010 08:50:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100817065024.GT27749@pengutronix.de>
References: <4C6A074A.4050606@gmail.com>
	<20100817063554.GR27749@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100817063554.GR27749@pengutronix.de>
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
Subject: Re: omap3: omap3530_beagle_per_uart_defconfig broken
To: Nishanth Menon <menon.nishanth@gmail.com>
Cc: barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On Tue, Aug 17, 2010 at 08:35:54AM +0200, Sascha Hauer wrote:
> On Mon, Aug 16, 2010 at 10:51:38PM -0500, Nishanth Menon wrote:
> > Hi,
> > while just giving the omap3530 boot from internal sram a whirl, found that
> >
> > commit 78104ae181f78d83664fdc7522eb632d9c3b2ec9
> > Author: Sascha Hauer <s.hauer@pengutronix.de>
> > Date:   Fri Apr 16 15:50:30 2010 +0200
> >
> >     arm: reimplement startup code in C
> >
> >     Lets translate the startup code to a language we all understand better.
> >     Tested on pcm038 (arm v5) and pcm043 (arm v6).
> >
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >
> > broke the support for OMAP3530 internal boot capability -> it looks like  
> > many of the V7Dcache skip logic got dropped off in the patch. will try  
> > to fix it ahead.. reverting this commit helps the barebox master..
> 
> We worked on Omap lately. I remember that there was a problem with the
> call to arch_init_lowlevel. Michael, do you have input on this?

This commit indeed broke omap because the call to arch_init_lowlevel was
missing afterwards. This got fixed with 3aa5c83. Maybe you have a
different problem and stumbled upon this commit while bisecting. You
could try checking out 78104ae181f78d83664fdc7522eb632d9c3b2ec9 and
cherry-pick 3aa5c83. Does this work?

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
