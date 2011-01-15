Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pe8si-0002XJ-9H
	for barebox@lists.infradead.org; Sat, 15 Jan 2011 16:21:37 +0000
Date: Sat, 15 Jan 2011 17:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110115162134.GH9041@pengutronix.de>
References: <1295058354-14732-1-git-send-email-plagnioj@jcrosoft.com>
	<20110115152555.GE9041@pengutronix.de>
	<20110115155035.GD14798@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110115155035.GD14798@game.jcrosoft.org>
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
Subject: Re: [PATCH] at91sam9m10g45ek: add board revision support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Sat, Jan 15, 2011 at 04:50:35PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> > > index e5bd45e..4d35ebe 100644
> > > --- a/arch/arm/mach-at91/Kconfig
> > > +++ b/arch/arm/mach-at91/Kconfig
> > > @@ -174,7 +174,8 @@ config MACH_AT91SAM9M10G45EK
> > >  	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
> > >  	select HAVE_NAND_ATMEL_BUSWIDTH_16
> > >  	help
> > > -	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit.
> > > +	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit
> > > +	  or AT91SAM9G45-EKES or AT91SAM9M10-EKES (for those 2 select the LG LCD)
> > >  	  <http://atmel.com/dyn/products/tools_card_v2.asp?tool_id=4735>
> > 
> > Isn't it better to let the user choose the exact board type here and
> > select the display type automatically depending on the choice?
> They are nearly the same board and the idea is to allow to specify the lcd as
> we can change it and it's the only difference between the 3 boards,

Ok, fine. Note I didn't want to suggest a complete new board support,
only the Kconfig option. The user likely knows better which board he has
than what exact display is connected to it.
Can you then add a help text to the display choice? Something like:

+choice
+       prompt "LCD type"
+       depends on MACH_AT91SAM9M10G45EK
+
+config LCD_TRULY_TFT1N4633E
+       bool "truly TFT1N4633E"
+	help
+	  Found on AT91SAM9M10G45-EK
+
+config LCD_LG_LB043WQ1
+       bool "LG philips LB043WQ1"
+	help
+	  Found on AT91SAM9G45-EKES and AT91SAM9M10-EKES
+
+endchoice

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
