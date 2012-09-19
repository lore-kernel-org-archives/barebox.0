Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEEx7-0006cx-85
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 07:44:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1TEEx4-0004pB-CY
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 09:44:06 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 19 Sep 2012 09:42:38 +0200
References: <n> <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <20120918220635.GT25990@game.jcrosoft.org>
In-Reply-To: <20120918220635.GT25990@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201209190942.38473.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Add bcm2835/Raspberry-Pi support
To: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD wrote:
> [...]
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index a54ad03..f8eb1b4 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -92,6 +92,11 @@ config ARCH_TEGRA
> >  	select CPU_ARM926T
> >  	select HAS_DEBUG_LL
> >
> > +config ARCH_BCM2835
> > +	bool "Broadcom BCM2835 boards"
> > +	select GENERIC_GPIO
> > +	select CPU_ARM1176
>
> please keep in alphabetic order

What a useless rule...

Just my 2ct.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
