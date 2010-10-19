Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P87a0-0000vc-24
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 08:29:56 +0000
Date: Tue, 19 Oct 2010 10:27:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101019082728.GL11127@game.jcrosoft.org>
References: <201010181859.51317.jbe@pengutronix.de>
	<20101019014246.GK11127@game.jcrosoft.org>
	<201010190855.18736.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201010190855.18736.jbe@pengutronix.de>
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
Subject: Re: [RFC] S3C24xx: Enable only the clocks of used units
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:55 Tue 19 Oct     , Juergen Beisert wrote:
> Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > -	mov r1, #0xFFFFFFF0
> > > +	/*
> > > +	 * Disable the clocks for most devices on this chip.
> > > +	 * They will be enabled again on demand
> > > +	 */
> > > +#ifdef CONFIG_S3C24XX_NAND_BOOT
> > > +	ldr r1, =0x6010 /* (CLK_RTC | CLK_GPIO | CLK_NAND) */
> > > +#else
> > > +	mov r1, #0x6000 /* (CLK_RTC | CLK_GPIO) */
> >
> > how about use the macro and define a macro to avoid the ifdef
> 
> I tried with macros, but the assembler failed. Can't remember why. But I tried 
> again a few minutes ago .... and now it works (????).
make because you had c definition in the header?
> 
> Do you mean something like this instead?
> 
> [...]
> #ifdef CONFIG_S3C24XX_NAND_BOOT
> # define FORCED_CLOCKS (CLK_RTC | CLK_GPIO | CLK_NAND)
> #else
> # define FORCED_CLOCKS (CLK_RTC | CLK_GPIO)
> #endif
> 
> 	/*
> 	 * Disable the clocks for most devices on this chip.
> 	 * They will be enabled again on demand
> 	 */
> 	ldr r1, =FORCED_CLOCKS
yeah excalty

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
