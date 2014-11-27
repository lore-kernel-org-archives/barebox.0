Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtwHr-00052R-4F
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 10:26:59 +0000
Date: Thu, 27 Nov 2014 11:26:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141127102636.GR30369@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
 <1417019394-23683-11-git-send-email-s.hauer@pengutronix.de>
 <1417021569.21700.1.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1417021569.21700.1.camel@pengutronix.de>
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
Subject: Re: [PATCH 10/11] ARM: i.MX: Add i.MX6sx sabresdb support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 26, 2014 at 06:06:09PM +0100, Lucas Stach wrote:
> Am Mittwoch, den 26.11.2014, 17:29 +0100 schrieb Sascha Hauer:
> > This adds support for the Freescale i.MX6sx sabresdb board.
> > 
> > Tested are:
> > 
> > - UART
> > - The three SD card slots
> > - USB host
> > - USB otg (host and device mode)
> > - FEC (both)
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> [...]
> 
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index dadbdeb..1ba448f 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -301,6 +301,10 @@ config MACH_SABRESD
> >  	bool "Freescale i.MX6 SabreSD"
> >  	select ARCH_IMX6
> >  
> > +config MACH_FREESCALE_IMX6SX_SABRESDB
> > +	bool "Freescale i.MX6sx SabreSDB"
> > +	select ARCH_IMX6SX
> > +
> 
> It seems you need to bash the PFUZE in the board startup code to get the
> board to operate correctly. So this should select both I2C and I2C_IMX.

Oh, right. Did that.

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
