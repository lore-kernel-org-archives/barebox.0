Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail9.tpgi.com.au ([203.12.160.104])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P1aGn-0000uE-Rl
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 07:43:07 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 1 Oct 2010 17:42:37 +1000
References: <1285903297-6779-1-git-send-email-marc@cpdesign.com.au>
	<20101001072752.GL10841@pengutronix.de>
In-Reply-To: <20101001072752.GL10841@pengutronix.de>
MIME-Version: 1.0
Message-Id: <201010011742.37136.marc@cpdesign.com.au>
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
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org


> > --- a/arch/arm/mach-imx/include/mach/imx35-regs.h
> > +++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
> > @@ -46,6 +46,11 @@
> > 
> >  #define IMX_NFC_BASE		0xBB000000
> >  #define IMX_FEC_BASE		0x50038000
> >  #define IMX_I2C1_BASE		0x43F80000
> > 
> > +#define IMX_I2C2_BASE		0x43F98000
> > +#define IMX_IC23_BASE		0x43F84000
> 
>                ^^^^
> Shouldn't that be I2C3?
> 
> rsc

Ouch, how embarrassing.

Please ignore this for the moment. I'll resubmit later, but it's a sunny 
friday afternoon and the outside is calling.

Cheers,
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
