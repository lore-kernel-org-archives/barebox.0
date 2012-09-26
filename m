Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGlhB-0003Cs-UK
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 07:06:10 +0000
Date: Wed, 26 Sep 2012 09:06:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926070608.GG1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/7] [RFC][PATCH] archosg9: add support for tablet
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 12:59:47AM +0200, vj wrote:
> Hello,
> A this is my first contribution, so I'm basically requesting for comments.
> 
> The attached patch adds support for Archos G9 tablet wich uses an OMAP4460 cpu.

Nice :)
I should have bought that one instead of a Acer.


> 
> A question I have is what does omap_vector_init do?
> It breaks usb-booting.

I digged around a bit. The funny thing is that this was introduced with
OMAP4 support and is only done on OMAP4. U-Boot instead has the following:

> #if !defined(CONFIG_TEGRA2)
> /*
>  * Setup vector:
>  * (OMAP4 spl TEXT_BASE is not 32 byte aligned.
>  * Continue to use ROM code vector only in OMAP4 spl)
>  */
> #if !(defined(CONFIG_OMAP44XX) && defined(CONFIG_SPL_BUILD))
> 	/* Set V=0 in CP15 SCTRL register - for VBAR to point to vector
>  * */
> 	mrc	p15, 0, r0, c1, c0, 0	@ Read CP15 SCTRL Register
> 	bic	r0, #CR_V		@ V = 0
> 	mcr	p15, 0, r0, c1, c0, 0	@ Write CP15 SCTRL Register
> 
> 	/* Set vector address in CP15 VBAR register */
> 	ldr	r0, =_start
> 	mcr	p15, 0, r0, c12, c0, 0	@Set VBAR
> #endif
> #endif	/* !Tegra2 */

So in U-Boot it's done for every ARMv7 *except* OMAP4 (and Tegra)

ARM has this information about it:

http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0434b/CIHHDAIH.html

> Purpose
> 
>     Provides the exception base address for exceptions that are not
>     handled in monitor mode.
> 
> Usage constraints
> 
>     The VBAR is:
> 
>         * only accessible in privileged modes
>         * only accessible in Secure state.

I think this is necessary to move the exception vector from ROM to our
own code. Does it work to read the VBAR register using the following
instruction:

	MRC p15, 0, <Rd>, c12, c0, 0 ; Read VBAR Register

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
