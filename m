Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqmBS-0002dB-3A
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 14:22:54 +0000
Date: Mon, 16 Jul 2012 16:21:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716142152.GL30009@pengutronix.de>
References: <5003FACD.80400@cmotion.eu> <20120716134406.57843f19@eb-e6520>
 <50040E86.60602@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50040E86.60602@cmotion.eu>
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
Subject: Re: tx51 ethernet regression
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 02:52:22PM +0200, Christian Kapeller wrote:
> Hi Eric,
> 
> > same problem here. the problem comes from :
> > 68b32be4926d3ab5b72036c0ceecef2f82aa0625 "i.MX51: Synchronize iomux
> > header file from kernel"
> > as now most pins have NO_PAD_CTRL which means the pad doesn't get
> > reconfigured and thus some pads to communicate with the FEC are no more
> > working.
> > 
> > A dirty workaround to default PAD config is :
> > diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
> > index 680d260..c21d8a2 100644
> > --- a/arch/arm/mach-imx/iomux-v3.c
> > +++ b/arch/arm/mach-imx/iomux-v3.c
> > @@ -45,6 +45,8 @@ int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
> >  
> >         if (!(pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
> >                 __raw_writel(pad_ctrl, base + pad_ctrl_ofs);
> > +       else if ((pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
> > +               __raw_writel(0, base + pad_ctrl_ofs);
> >  
> >         return 0;
> >  }
> 
> I see your problem, and why this patch has solved it. My board also uses
> some pads, that are declared with NO_PAD_CTRL. I've applied your
> solution as well, but no luck. I see the same behaviour as before.
> 
> The fact, that I am, able to do dhcp (even without your change), and
> sometimes transfer files from some other host, makes me think, that my
> pad config isn't that broken. May be the problem is in the pad configs,
> some changed to PAD_CTRL_[2,4,5], some are NO_PAD_CTRL.
> 
> I don't know how the pad configuration influences pads, that are
> assigned to some imx peripheral, like the FEC. For example the PAD
> definition for the pads used for reception is inconsistent:
> 
> from iomux-mx51.h:
> 
> #define MX51_PAD_NANDF_D9__FEC_RDATA0		IOMUX_PAD(0x554, 0x16c, 0x12,
> 0x958, 0, MX51_PAD_CTRL_4)
> #define MX51_PAD_EIM_EB3__FEC_RDATA1		IOMUX_PAD(0x46c, 0x0d8, 3, 0x95c,
> 0, NO_PAD_CTRL)
> #define MX51_PAD_EIM_CS2__FEC_RDATA2		IOMUX_PAD(0x47c, 0x0e8, 3, 0x960,
> 0, NO_PAD_CTRL)
> #define MX51_PAD_EIM_CS3__FEC_RDATA3		IOMUX_PAD(0x480, 0x0ec, 3, 0x964,
> 0, NO_PAD_CTRL)
> 
> I'd expect all RDATA signals all having the same pad control settings.
> They don't have, and I't doesn't make a difference, when I set them all
> to PAD_CTRL_4 as the first one.

The easiest way to get back to a working pin setup is probably to add a
printk to the writel in iomux-v3.c in both the working and the
nonworking barebox. It should be quite easy to figure out and bisect the
differences then.
Note that you once you have figured it out you should send the same
patch for the kernel aswell.

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
