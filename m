Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auwln-0000zb-Pe
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 06:46:53 +0000
Date: Tue, 26 Apr 2016 08:46:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160426064629.GG7860@pengutronix.de>
References: <1461452493-19431-1-git-send-email-festevam@gmail.com>
 <20160425061432.GB7860@pengutronix.de>
 <CAOMZO5AME2_nvEQdYh=oELG5JXjhcx=Mqq=-uXuoQDm542YaGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5AME2_nvEQdYh=oELG5JXjhcx=Mqq=-uXuoQDm542YaGQ@mail.gmail.com>
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
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-sabresd: Fix barebox-environment
 location
To: Fabio Estevam <festevam@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Mon, Apr 25, 2016 at 08:06:45AM -0300, Fabio Estevam wrote:
> Hi Sascha,
> 
> On Mon, Apr 25, 2016 at 3:14 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
> > index d661463..6e28ac9 100644
> > --- a/arch/arm/dts/imx25-karo-tx25.dts
> > +++ b/arch/arm/dts/imx25-karo-tx25.dts
> > @@ -123,12 +123,12 @@
> >
> >         partition@0 {
> >                 label = "boot";
> > -               reg = <0x0 0x80000>;
> > +               reg = <0x0 0xe0000>;
> >         };
> >
> >         partition@1 {
> 
> This should be "partition@0xe0000 {" to match the 'reg' property below.

Indeed, that's something I wanted to fix for longer now. I finally did
this ;)

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
