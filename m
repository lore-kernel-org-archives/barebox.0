Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjvfz-0007P4-7O
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 18:42:00 +0000
Received: by mail-wi0-f180.google.com with SMTP id hm4so3018968wib.1
 for <barebox@lists.infradead.org>; Fri, 22 Nov 2013 10:41:36 -0800 (PST)
Date: Fri, 22 Nov 2013 19:41:30 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131122184129.GA15482@omega>
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

On Fri, Nov 22, 2013 at 07:35:19PM +0100, Sascha Hauer wrote:
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
> 
Sorry for my question, but what exactly do "lwl-"?

I suppose something with "lowlevel..."

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
