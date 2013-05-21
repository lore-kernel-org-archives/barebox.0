Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueqkh-0004XX-TK
 for barebox@lists.infradead.org; Tue, 21 May 2013 17:53:36 +0000
Date: Tue, 21 May 2013 19:53:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130521175313.GS32299@pengutronix.de>
References: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
 <1369130267-8094-9-git-send-email-s.hauer@pengutronix.de>
 <1369149765.377662790@f99.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369149765.377662790@f99.mail.ru>
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
Subject: Re: [PATCH 08/10] ARM: i.MX51 babbage: provide MAC adress in
 devicetree
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, May 21, 2013 at 07:22:45PM +0400, Alexander Shiyan wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/dts/imx51-babbage.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
> > index 9630b61..4c43312 100644
> > --- a/arch/arm/dts/imx51-babbage.dts
> > +++ b/arch/arm/dts/imx51-babbage.dts
> > @@ -216,6 +216,10 @@
> >  	status = "okay";
> >  };
> >  
> > +&iim {
> > +	barebox,provide-mac-address = <&fec 1 9>;
> > +};
> 
> Fixme, is this entry compatible with kernel devicetree?
> If not, should it be stripped from dt passed to kernel?

It's compatible in the sense that the Kernel does not use this
property (it does not even use the iim node).

I see no reason why it should hurt the Kernel when there are some
barebox specific properties in the devicetree, at least not when they
are explicitly specified as barebox specific.

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
