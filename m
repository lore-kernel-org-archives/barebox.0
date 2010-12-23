Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVl1S-0005mZ-FS
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 13:15:59 +0000
Date: Thu, 23 Dec 2010 14:15:54 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20101223131554.GU4233@pengutronix.de>
References: <4D133D77.5090908@free-electrons.com>
	<20101223130737.GE19735@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101223130737.GE19735@jasper.tkos.co.il>
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
Subject: Re: Nand support on STM/i.MX (especially iMX23)
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 23, 2010 at 03:07:37PM +0200, Baruch Siach wrote:
> On Thu, Dec 23, 2010 at 01:15:51PM +0100, Gregory CLEMENT wrote:
> > I planned to add NAND support for iMX23 (which should work for
> > iMX28). But this time before starting writing this driver I would
> > like to know if someone is already working on it. If it is the case
> > I would like to be involved in this development to bring my help.
> > If it is not the case, I considered to start from the driver
> > supplied by freescale on thir 2.6.31 kernel. Is it a good choice?
> > Have you some advice to give me?
>
> In my opinion it should be easier to start with Freescale's 2.6.35
> based kernel from branch imx_2.6.35_10.10.01 in
> http://opensource.freescale.com/pub/scm/imx/linux-2.6-imx.git, since
> it is closer to newer kernels.

We are working on more mainline support for all kinds of peripherals for
the MX23 and MX28, but until now, nobody has started with NAND yet.

As far as I remember, the FSL code was really, really uggly, so it will
probably need an experienced look at the design. I suppose that there
will be not much activity over the holidays, so if you want to go ahead,
keep the list informed.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
