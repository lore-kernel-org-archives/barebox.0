Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avLil-0004Ik-IF
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 09:25:24 +0000
Date: Wed, 27 Apr 2016 11:25:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160427092501.GT7860@pengutronix.de>
References: <1461653060-13481-1-git-send-email-s.hauer@pengutronix.de>
 <CAOMZO5BvYEBGnZbT1aznEbgoZH_hZS=a+-phUz+wJPX02BmqFg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BvYEBGnZbT1aznEbgoZH_hZS=a+-phUz+wJPX02BmqFg@mail.gmail.com>
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
Subject: Re: [PATCH v2] ARM: i.MX: increase barebox partition sizes
To: Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Apr 26, 2016 at 08:47:28AM -0300, Fabio Estevam wrote:
> Hi Sascha,
> 
> On Tue, Apr 26, 2016 at 3:44 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
> > index 8d79471..76847ff 100644
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
> > -       partition@80000 {
> > +       partition@e0000 {
> >                 label = "environment";
> > -               reg = <0x80000 0x80000>;
> > +               reg = <0xe0000 0x20000>;
> 
> Here the environment partition size is changed from 512kB to 128kB.
> Couldn't this cause issues?

Normally the environment is much smaller, so I wouldn't expect issues
here. The alternative to making the environment smaller would be to move
other partitions to the back. This would probably hurt more, especially
since a regular fdisk starts the first partition at offset 1MiB.

Another approach would be to use a MBR partition for the environment
instead of using the raw device.

> 
> Shouldn't this change be done by a separate patch?

We can't increase the barebox partition without shrinking the
environment right behind it. Or do you mean that we first shrink
the environment and in a second patch increase the barebox partition?

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
