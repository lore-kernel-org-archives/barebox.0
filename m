Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dYB9Z-0002su-JU
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 13:06:07 +0000
Message-ID: <1500555943.26680.8.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 20 Jul 2017 15:05:43 +0200
In-Reply-To: <20170719212013.GA1675@ravnborg.org>
References: <20170719212013.GA1675@ravnborg.org>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/6] assorted fixes, mainly at91 related
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Am Mittwoch, den 19.07.2017, 23:20 +0200 schrieb Sam Ravnborg:
> While working on enabling DT support for at91sam9263ek
> I have stumbled over a fev issues that are
> all fixed in the following patches.
> 
> Some of the issues may only be relevant when we have more at91
> boards supporting DT.
> None of the fixes are critical and are thus mainly -next material.
> 
> 	Sam
> 
> Sam Ravnborg (6):
>       arm: at91 bootstrap: declare local function static
>       macb: fix clock probing with DT
>       clk: at91: fix clk-main
>       pinctrl: at91: move initcalls to postcore_initcall
>       mci: atmel_mci: fix devinfo DEV with OF enabled
>       atmel_lcdfb: fix so the correct guard_time is used

Thanks, applied on -next.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
