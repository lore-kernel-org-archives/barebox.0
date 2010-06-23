Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORJfo-0003Ai-36
	for barebox@lists.infradead.org; Wed, 23 Jun 2010 06:43:01 +0000
Date: Wed, 23 Jun 2010 08:42:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100623064257.GM12115@pengutronix.de>
References: <L4F5S4$2423D397FA7BDC615C5A7C3556F0B4F1@aruba.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <L4F5S4$2423D397FA7BDC615C5A7C3556F0B4F1@aruba.it>
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
Subject: Re: Regression: not booting anymore on OMAP35xx
To: Luca Ceresoli <luca@lucaceresoli.net>
Cc: barebox@lists.infradead.org

On Tue, Jun 22, 2010 at 04:04:52PM +0200, Luca Ceresoli wrote:
> Sascha Hauer wrote:
> > Hi Luca,
> > 
> > On Tue, Jun 22, 2010 at 02:26:11PM +0200, Luca Ceresoli wrote:
> > > Hi,
> > > 
> > 
> > Seems that I lost the call to arch_init_lowlevel. Does the following
> > patch help?
> 
> I'm afraid it doesn't seem to.
> It fails with the same symptoms.
> 
> Luca
> 
> > 
> > 
> > diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> > index eea7dcf..91d2ccd 100644
> > --- a/arch/arm/cpu/start.c
> > +++ b/arch/arm/cpu/start.c
> > @@ -50,6 +50,8 @@ void __naked __bare_init reset(void)
> >  {
> >  	uint32_t r;
> >  
> > +	arch_init_lowlevel();
> > +

Ok, this has to be done *after* switching the cpu to SVC32 mode.

I tested this on my beagle board and now it works again. I pushed
a patch to the master repository.

Sorry for the inconvenience and thanks for reporting.

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
