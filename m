Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPQyn-0000al-As
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 06:24:58 +0000
Date: Mon, 17 Mar 2014 07:24:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317062434.GA17250@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
 <1394803820-29277-7-git-send-email-s.hauer@pengutronix.de>
 <20140314160132.GA7755@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140314160132.GA7755@omega>
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
Subject: Re: [PATCH 6/6] ARM: pfla02: Set new ethernet phy tx timings
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 14, 2014 at 05:01:33PM +0100, Alexander Aring wrote:
> On Fri, Mar 14, 2014 at 02:30:20PM +0100, Sascha Hauer wrote:
> > From: Christian Hemp <c.hemp@phytec.de>
> > 
> > TX_CLK line is approx. 54mm longer than other TX lines which adds
> > a delay of 0.36ns. RGMII need a delay of min. 1.0ns. This mean we have to add
> > a delay of 0.64ns. We choose 0.78 to have a little gap. This can be done by
> > setting GTX pad skew value to 11100
> >  => Set register 2.8 (RGMII Clock Pad Skew) to 0x038F.
> > 
> > Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> > ---
> >  arch/arm/boards/phytec-phyflex-imx6/board.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
> > index f510407..3db88da 100644
> > --- a/arch/arm/boards/phytec-phyflex-imx6/board.c
> > +++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
> > @@ -21,6 +21,9 @@
> >  #include <gpio.h>
> >  #include <init.h>
> >  #include <of.h>
> > +#include <fec.h>
> > +
> > +#include <linux/micrel_phy.h>
> >  
> >  #include <mach/imx6.h>
> >  
> > @@ -36,6 +39,21 @@ static int eth_phy_reset(void)
> >  	return 0;
> >  }
> >  
> > +static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
> > +{
> > +	phy_write(dev, 0x0d, device);
> > +	phy_write(dev, 0x0e, reg);
> > +	phy_write(dev, 0x0d, (1 << 14) | device);
> > +	phy_write(dev, 0x0e, val);
> > +}
> > +
> > +static int ksz9031rn_phy_fixup(struct phy_device *dev)
> > +{
> > +	mmd_write_reg(dev, 2, 8, 0x039F);
> > +
> commit msg says 0x038F and here is 0x039F. Which one is correct now?

0x39f is correct, I squashed a followup commit into this one without
fixing the commit message. I changed the commit message accordingly.

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
