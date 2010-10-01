Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P1aZo-00061k-3l
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 08:02:45 +0000
Date: Fri, 1 Oct 2010 10:02:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101001080235.GB28242@pengutronix.de>
References: <1285903297-6779-1-git-send-email-marc@cpdesign.com.au>
	<20101001072752.GL10841@pengutronix.de>
	<201010011742.37136.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010011742.37136.marc@cpdesign.com.au>
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
Subject: Re: [PATCH] imx35: add base addresses for I2C and SDHC
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Fri, Oct 01, 2010 at 05:42:37PM +1000, Marc Reilly wrote:
> 
> > > --- a/arch/arm/mach-imx/include/mach/imx35-regs.h
> > > +++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
> > > @@ -46,6 +46,11 @@
> > > 
> > >  #define IMX_NFC_BASE		0xBB000000
> > >  #define IMX_FEC_BASE		0x50038000
> > >  #define IMX_I2C1_BASE		0x43F80000
> > > 
> > > +#define IMX_I2C2_BASE		0x43F98000
> > > +#define IMX_IC23_BASE		0x43F84000
> > 
> >                ^^^^
> > Shouldn't that be I2C3?
> > 
> > rsc
> 
> Ouch, how embarrassing.
> 
> Please ignore this for the moment. I'll resubmit later, but it's a sunny 
> friday afternoon and the outside is calling.

I just fixed it up. It's a rainy friday morning here ;)

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
