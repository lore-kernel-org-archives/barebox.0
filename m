Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lifc.univ-fcomte.fr ([194.57.88.66]
 helo=lifc-proxy.univ-fcomte.fr)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK5Nm-00036W-6U
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 11:16:07 +0000
Date: Mon, 25 Mar 2013 12:14:34 +0100
From: "gwenhael.goavec" <gwenhael.goavec-merou@armadeus.com>
Message-ID: <20130325121434.2f343c06@dell.trabucayre.com>
In-Reply-To: <20130315151312.GG1906@pengutronix.de>
References: <1363165138-3085-1-git-send-email-gwenhael.goavec-merou@armadeus.com>
 <20130315151312.GG1906@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] [ARM] imx1: add #define to configure frequency for the
 clk32
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi,
What do you mean by "first user" ?

Gwenhael

On Fri, 15 Mar 2013 16:13:12 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Mar 13, 2013 at 09:58:58AM +0100, Gwenhael Goavec-Merou wrote:
> > From: gwenhael <gwenhael.goavec-merou@armadeus.com>
> > 
> > i.MX1 allows to use a 32kHz or a 32.768kHz quartz for the 32kHz clock source
> > (MC9328MXLRM p.177).
> > This patch adds the ability for the developer to change the default value for
> > the 32kHz clock source.
> 
> Ok, I see we have to do something here as there are systems out there
> which have different clock frequencies. This also happens on other i.MX
> SoCs.
> 
> I don't really like the solution, although I can't currently think of a
> better one (at least not as long devicetrees are not available
> everywhere). Using board specific defines which propagate to generic
> drivers is not a very good design. However, is it ok for you when we
> apply it along with the first user? This way we do not have this dead
> define in the code.
> 
> Sascha
> 
> 
> > 
> > Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@armadeus.com>
> > ---
> >  arch/arm/mach-imx/clk-imx1.c |    6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
> > index 0d04a92..b779ab2 100644
> > --- a/arch/arm/mach-imx/clk-imx1.c
> > +++ b/arch/arm/mach-imx/clk-imx1.c
> > @@ -26,6 +26,10 @@
> >  
> >  #include "clk.h"
> >  
> > +#ifndef MX1_CLK32_FREQ
> > +#define MX1_CLK32_FREQ 32000
> > +#endif
> > +
> >  #define CCM_CSCR	0x0
> >  #define CCM_MPCTL0	0x4
> >  #define CCM_SPCTL0	0xc
> > @@ -91,7 +95,7 @@ static int imx1_ccm_probe(struct device_d *dev)
> >  
> >  	regs = dev_request_mem_region(dev, 0);
> >  
> > -	mx1_clocks_init(regs, 32000);
> > +	mx1_clocks_init(regs, MX1_CLK32_FREQ);
> >  
> >  	return 0;
> >  }
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
