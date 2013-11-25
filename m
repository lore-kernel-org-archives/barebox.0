Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f42.google.com ([74.125.82.42])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vkqhb-0006HD-OQ
 for barebox@lists.infradead.org; Mon, 25 Nov 2013 07:35:28 +0000
Received: by mail-wg0-f42.google.com with SMTP id a1so1505975wgh.1
 for <barebox@lists.infradead.org>; Sun, 24 Nov 2013 23:35:00 -0800 (PST)
Date: Mon, 25 Nov 2013 08:34:54 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131125073453.GA26532@omega>
References: <1385236704-2309-1-git-send-email-vicencb@gmail.com>
 <20131125073143.GN24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131125073143.GN24559@pengutronix.de>
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
Subject: Re: [PATCH 1/2] OMAP4: fix writel data/address swap regression
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>

On Mon, Nov 25, 2013 at 08:31:44AM +0100, Sascha Hauer wrote:
> On Sat, Nov 23, 2013 at 08:58:23PM +0100, Vicente Bergas wrote:
> > ---
> >  arch/arm/mach-omap/omap4_clock.c | 176 +++++++++++++++++++--------------------
> >  1 file changed, 88 insertions(+), 88 deletions(-)
> > 
> > diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
> > index 268f7c1..72f72a1 100644
> > --- a/arch/arm/mach-omap/omap4_clock.c
> > +++ b/arch/arm/mach-omap/omap4_clock.c
> > @@ -89,7 +89,7 @@ void omap4_configure_per_dpll(const struct dpll_param *dpll_param)
> >  void omap4_configure_abe_dpll(const struct dpll_param *dpll_param)
> >  {
> >  	/* Select sys_clk as ref clk for ABE dpll */
> > -	writel(CM_ABE_PLL_REF_CLKSEL, 0x0);
> > +	writel(0x0, CM_ABE_PLL_REF_CLKSEL);
> 
> What a silly bug! Who messed this up? Damn. me :(. Applied both, thanks
> 
Yea, I will put this on my list what I should ever check on patches with
writel. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
