Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VkrIc-0006lo-57
 for barebox@lists.infradead.org; Mon, 25 Nov 2013 08:13:42 +0000
Date: Mon, 25 Nov 2013 09:13:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131125081319.GO24559@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
 <1385132083-7484-16-git-send-email-s.hauer@pengutronix.de>
 <20131122182346.GF7965@ns203013.ovh.net>
 <20131122183519.GL24559@pengutronix.de>
 <20131123145446.GG7965@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131123145446.GG7965@ns203013.ovh.net>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 23, 2013 at 03:54:46PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 19:35 Fri 22 Nov     , Sascha Hauer wrote:
> > On Fri, Nov 22, 2013 at 07:23:46PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 15:54 Fri 22 Nov     , Sascha Hauer wrote:
> > > > This is necessary for successful pbl compilation on am33xx.
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  arch/arm/mach-omap/Makefile | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > > 
> > > > diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> > > > index cf2d5ee..ed44cb8 100644
> > > > --- a/arch/arm/mach-omap/Makefile
> > > > +++ b/arch/arm/mach-omap/Makefile
> > > > @@ -24,6 +24,7 @@ pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
> > > >  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> > > >  pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> > > >  obj-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
> > > > +pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o
> > > so use lwl-
> > 
> > Some functions are just in the regular binary, others in pbl. It's
> > really needed twice.
> 
> I hate duplicated code
> 
> can you add a obj-pbl-y support for this instead of duplicating?

Just changed that to this:

From 2155ed411eccde1bff809d00fd89bfe5ae6d2020 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Nov 2013 08:43:42 +0100
Subject: [PATCH] Make: introduce obj-pbl-y

For compiling object files both in the regular binary and the pbl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3ff094f..6ccf572 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -29,6 +29,9 @@ else
 obj-y		+= $(lwl-y)
 endif
 
+obj-y		+= $(obj-pbl-y)
+pbl-y		+= $(obj-pbl-y)
+
 # for non dirs add pbl- prefix to the target
 # so we recompile the source with custom flags and custom quiet
 __pbl-y		:= $(notdir $(pbl-y))
-- 
1.8.4.2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
