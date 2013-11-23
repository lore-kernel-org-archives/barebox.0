Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VkEZl-0005u1-OA
 for barebox@lists.infradead.org; Sat, 23 Nov 2013 14:52:50 +0000
Received: from mail173.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DE78EFFA11B
 for <barebox@lists.infradead.org>; Sat, 23 Nov 2013 15:54:43 +0100 (CET)
Date: Sat, 23 Nov 2013 15:54:46 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131123145446.GG7965@ns203013.ovh.net>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
 <1385132083-7484-16-git-send-email-s.hauer@pengutronix.de>
 <20131122182346.GF7965@ns203013.ovh.net>
 <20131122183519.GL24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131122183519.GL24559@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH 15/16] ARM: am33xx: compile SoC files for pbl aswell
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:35 Fri 22 Nov     , Sascha Hauer wrote:
> On Fri, Nov 22, 2013 at 07:23:46PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 15:54 Fri 22 Nov     , Sascha Hauer wrote:
> > > This is necessary for successful pbl compilation on am33xx.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/mach-omap/Makefile | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> > > index cf2d5ee..ed44cb8 100644
> > > --- a/arch/arm/mach-omap/Makefile
> > > +++ b/arch/arm/mach-omap/Makefile
> > > @@ -24,6 +24,7 @@ pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
> > >  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> > >  pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> > >  obj-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
> > > +pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
> > so use lwl-
> 
> Some functions are just in the regular binary, others in pbl. It's
> really needed twice.

I hate duplicated code

can you add a obj-pbl-y support for this instead of duplicating?

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
