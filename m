Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te95J-0007XF-HR
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 18:43:47 +0000
Date: Thu, 29 Nov 2012 19:43:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121129184333.GR10369@pengutronix.de>
References: <1354175353-8717-1-git-send-email-s.hauer@pengutronix.de>
 <20121129075621.GC12054@sapphire.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121129075621.GC12054@sapphire.tkos.co.il>
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
Subject: Re: [PATCH v2] ARM i.MX: Add Garz+Fricke Vincell Board support
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Thu, Nov 29, 2012 at 09:56:21AM +0200, Baruch Siach wrote:
> Hi Sascha,
> 
> On Thu, Nov 29, 2012 at 08:49:13AM +0100, Sascha Hauer wrote:
> > This adds support for the Garz+Fricke Vincell board. This has
> > a i.MX53 Processor with 512MB of DDR3 RAM.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> [...]
> 
> > +void blink(void)
> > +{
> > +	volatile int i;
> > +
> > +	writel(0x1, 0x53fa82a8);
> > +	writel(0x2, 0x53f88004);
> > +
> > +	while (1) {
> > +		for (i = 0; i < 1000000; i++);
> > +		writel(0x2, 0x53f88000);
> > +		for (i = 0; i < 1000000; i++);
> > +		writel(0x0, 0x53f88000);
> > +	}
> > +}
> 
> Static? Is it a debugging aid? It's not used int this patch.

Seems I had a hard time debugging this hardware ;)

Removed before applying.

Thanks
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
