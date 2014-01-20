Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5BXA-00083h-NZ
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 09:52:45 +0000
Date: Mon, 20 Jan 2014 10:52:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140120095222.GL16215@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
 <1389971012-22977-21-git-send-email-s.hauer@pengutronix.de>
 <20140118180932.GA3624@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140118180932.GA3624@omega>
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
Subject: Re: [PATCH 20/22] ARM: dts: phycard-i.MX27: Add sdhc2 pinctrl
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 18, 2014 at 07:09:34PM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Fri, Jan 17, 2014 at 04:03:30PM +0100, Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/dts/imx27-phytec-phycard-s-rdk.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> > index 0d65023..789ce3f 100644
> > --- a/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> > +++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk.dts
> > @@ -83,6 +83,10 @@
> >  			fsl,pins = <MX27_OWIRE1_PINGRP1>;
> >  		};
> >  
> > +		pinctrl_sdhc2: sdhc3grp {
> 
> don't know if this is a typo, but maybe we need a s/sdhc3grp/sdhc2grp/g
> here. I think it works anyway with my knowledge about devicetrees :-)

Ok, fixed.

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
