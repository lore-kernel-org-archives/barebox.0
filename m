Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pe8PR-00019U-QK
	for barebox@lists.infradead.org; Sat, 15 Jan 2011 15:51:22 +0000
Date: Sat, 15 Jan 2011 16:50:35 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110115155035.GD14798@game.jcrosoft.org>
References: <1295058354-14732-1-git-send-email-plagnioj@jcrosoft.com>
	<20110115152555.GE9041@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110115152555.GE9041@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

> > diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> > index e5bd45e..4d35ebe 100644
> > --- a/arch/arm/mach-at91/Kconfig
> > +++ b/arch/arm/mach-at91/Kconfig
> > @@ -174,7 +174,8 @@ config MACH_AT91SAM9M10G45EK
> >  	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
> >  	select HAVE_NAND_ATMEL_BUSWIDTH_16
> >  	help
> > -	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit.
> > +	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit
> > +	  or AT91SAM9G45-EKES or AT91SAM9M10-EKES (for those 2 select the LG LCD)
> >  	  <http://atmel.com/dyn/products/tools_card_v2.asp?tool_id=4735>
> 
> Isn't it better to let the user choose the exact board type here and
> select the display type automatically depending on the choice?
They are nearly the same board and the idea is to allow to specify the lcd as
we can change it and it's the only difference between the 3 boards,

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
