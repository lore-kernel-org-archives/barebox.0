Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P866h-0004iX-BU
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 06:55:36 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 19 Oct 2010 08:55:18 +0200
References: <201010181859.51317.jbe@pengutronix.de>
	<20101019014246.GK11127@game.jcrosoft.org>
In-Reply-To: <20101019014246.GK11127@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010190855.18736.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD wrote:
> > -	mov r1, #0xFFFFFFF0
> > +	/*
> > +	 * Disable the clocks for most devices on this chip.
> > +	 * They will be enabled again on demand
> > +	 */
> > +#ifdef CONFIG_S3C24XX_NAND_BOOT
> > +	ldr r1, =0x6010 /* (CLK_RTC | CLK_GPIO | CLK_NAND) */
> > +#else
> > +	mov r1, #0x6000 /* (CLK_RTC | CLK_GPIO) */
>
> how about use the macro and define a macro to avoid the ifdef

I tried with macros, but the assembler failed. Can't remember why. But I tried 
again a few minutes ago .... and now it works (????).

Do you mean something like this instead?

[...]
#ifdef CONFIG_S3C24XX_NAND_BOOT
# define FORCED_CLOCKS (CLK_RTC | CLK_GPIO | CLK_NAND)
#else
# define FORCED_CLOCKS (CLK_RTC | CLK_GPIO)
#endif

	/*
	 * Disable the clocks for most devices on this chip.
	 * They will be enabled again on demand
	 */
	ldr r1, =FORCED_CLOCKS
[...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
