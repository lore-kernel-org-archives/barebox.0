Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from quix.smartspb.net ([217.119.16.133])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R5xIE-00022g-RQ
	for barebox@lists.infradead.org; Tue, 20 Sep 2011 10:11:11 +0000
From: Alexander Shiyan <shc@milas.spb.ru>
Message-Id: <1316513454.23246@milas.spb.ru>
In-Reply-To: <20110919100549.GM31404@pengutronix.de>
Date: Tue, 20 Sep 2011 14:10:55 +0400 (MSD)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1316513455"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Add SD3 & I2C2 pin definitions for MX51
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--bound1316513455
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Sascha Hauer <s.hauer@pengutronix.de> wrote ..
> On Wed, Sep 07, 2011 at 10:59:07AM +0400, Alexander Shiyan wrote:
> > --- barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/iomux-mx51.h	2011-08-26
> 18:23:46.000000000 +0400
> > +++ barebox-v2011.09.0/arch/arm/mach-imx/include/mach/iomux-mx51.h	2011-09-05
> 15:42:19.000000000 +0400
> > @@ -146,24 +146,37 @@
> > 
...
> >  #define MX51_PAD_GPIO1_2__GPIO1_2			IOMUX_PAD(0x7D4, 0x3CC, 0, 0x0, 0, NO_PAD_CTRL)
> > +#define MX51_PAD_GPIO1_2__I2C2_SCL			IOMUX_PAD(0x7D4, 0x3CC, 2 | IOMUX_CONFIG_SION,
> 0x9b8, 3, NO_PAD_CTRL)
> > +
> 
> I think the i2c pads need a pullup, right?
Maybe, but it worked without pull-up because pull-up resistors are provided on the module.

--bound1316513455
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--bound1316513455--
