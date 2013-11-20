Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vj19i-0004P6-6m
 for barebox@lists.infradead.org; Wed, 20 Nov 2013 06:20:55 +0000
Date: Wed, 20 Nov 2013 07:20:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131120062030.GE24559@pengutronix.de>
References: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
 <1384772798-3297-4-git-send-email-p.zabel@pengutronix.de>
 <1384773102.300130062@f403.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384773102.300130062@f403.i.mail.ru>
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
Subject: Re: [PATCH 4/6] ARM i.MX6: sabrelite: usb is probed from device tree
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Nov 18, 2013 at 03:11:42PM +0400, Alexander Shiyan wrote:
> > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> >  arch/arm/boards/freescale-mx6-sabrelite/board.c | 5 -----
> >  arch/arm/dts/imx6q-sabrelite.dts                | 6 ++++++
> >  2 files changed, 6 insertions(+), 5 deletions(-)
> ...
> > diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
> > index 1368ef1..97372dd 100644
> > --- a/arch/arm/dts/imx6q-sabrelite.dts
> > +++ b/arch/arm/dts/imx6q-sabrelite.dts
> > @@ -117,10 +117,16 @@
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_usbotg_1>;
> >  	disable-over-current;
> > +	phy-mode = "utmi";
> > +	barebox,phy_type = "utmi";
> 
> No more need to define "barebox,phy_type".

Fixed this while applying

Sascha

> 
> > +	dr_mode = "host";
> >  	status = "okay";
> >  };
> >  
> >  &usbh1 {
> > +	phy-mode = "utmi";
> > +	barebox,phy_type = "utmi";
> > +	dr_mode = "host";
> >  	status = "okay";
> >  };
> >  
> > -- 
> 
> ---
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
