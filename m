Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail13.tpgi.com.au ([203.12.160.181])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PculZ-0001yC-2P
	for barebox@lists.infradead.org; Wed, 12 Jan 2011 07:05:10 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Wed, 12 Jan 2011 18:04:43 +1100
References: <1294799275-18113-1-git-send-email-marc@cpdesign.com.au>
	<20110112025858.GD20706@game.jcrosoft.org>
In-Reply-To: <20110112025858.GD20706@game.jcrosoft.org>
MIME-Version: 1.0
Message-Id: <201101121804.44105.marc@cpdesign.com.au>
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
Subject: Re: [PATCH] imx(25,35): save boot location into $barebox_loc env.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


> > +#include <mach/imx-regs.h>
> > +
> > +#if defined(CONFIG_ARCH_IMX25) || defined(CONFIG_ARCH_IMX35)
> 
> please move this to the Makefile

I respectfully disagree. :) Other imx will require a slightly different 
approach to this function, the imx31 and the imx51 are both different for 
example.

So we either need to have a separate .c file for each different type and link 
them appropriately in the Makefile, or we have a single boot.c and 
conditionally compile.
I think its overkill to split it up into separate files, especially seeing as 
some code will be (hopefully) be used by multiple processors. I also think its 
better that with one file the code with similar functionality is grouped 
together.

Hope those arguments make sense.
> 
> > +/*
> > + * Saves the boot source media into the $barebox_loc enviroment variable
> > + *
> > + * This information is useful for barebox init scripts as we can then
> > easily + * use a kernel image stored on the same media that we launch
> > barebox with + * (for example).
> > + *
> > + * imx25 and imx35 can boot into barebox from several media such as
> > + * nand, nor, mmc/sd cards, serial roms. "mmc" is used to represent
> > several + * sources as its impossible to distinguish between them.
> > + *
> > + * Some sources such as serial roms can themselves have 3 different boot
> > + * possibilities (i2c1, i2c2 etc). It is assumed that any board will
> > + * only be using one of these at any one time.
> > + *
> > + * Note also that I suspect that the boot source pins are only sampled
> > at + * power up.
> > + */
> > +static int imx_boot_save_loc(void)
> > +{
> > +	const char *bareboxloc = NULL;
> > +	uint32_t reg;
> > +	unsigned int ctrl, type;
> > +
> > +	/* [CTRL][TYPE] */
> > +	const char *const locations[4][4] = {
> 
> 	a struct could be better not sure

I couldn't think of a way where a struct would make it easier than it is... 
suggestions?

> 
> > +		{ /* CTRL = WEIM */
> > +			"nor",
> > +			0,
> 
> 			NULL no?

Ack, you're right.

Guess I'll have to have another go :) I'll let it rest for a bit and see if 
there are any other comments.

Cheers
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
