Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZRFx1-0003EN-FV
 for barebox@lists.infradead.org; Mon, 17 Aug 2015 08:39:28 +0000
Message-ID: <1439800742.3050.3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 17 Aug 2015 10:39:02 +0200
In-Reply-To: <CAHQ1cqHUVRbYe5Fx3NXigJkcR4ZXwOAHOCo-uDorXxyUseFuLA@mail.gmail.com>
References: <1439657071-26736-1-git-send-email-andrew.smirnov@gmail.com>
 <20150815205349.GA28427@ravnborg.org>
 <CAHQ1cqHUVRbYe5Fx3NXigJkcR4ZXwOAHOCo-uDorXxyUseFuLA@mail.gmail.com>
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
Subject: Re: [PATCH v2] i2c-imx: Add missing preporcessor directives
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

Hi Andrey,

Am Samstag, den 15.08.2015, 16:33 -0700 schrieb Andrey Smirnov:
> On Sat, Aug 15, 2015 at 1:53 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
> > Hi Andrey.
> >
> > On Sat, Aug 15, 2015 at 09:44:31AM -0700, Andrey Smirnov wrote:
> >> On non-PowerPC platforms call to i2c_fsl_set_clk() will try to obtain
> >> I2C clock freqency from i2c_fsl->clk, however that field would not be
> >> initialized if CONFIG_COMMON_CLK is not set. This patch makes sure
> >> that i2c_fls_set_clk() is a no-op on non-PPC targets when
> >> CONFIG_COMMON_CLK is not set
> >
> > Per the other mail we will never hit this case.
> > So you add an ifdef that never will be used,
> > because this driver is either for IMX (which uses COMMON_CLK) or PowerPC.
> >
> 
> IMHO, source code is orthogonal to build and configuration system.
> While it is true that the configuration system would prevent this
> combination of pre-processor symbols to ever be defined I think not
> making this assumption would result in more reliable and robust source
> code.
> 
> > There is this snip from the driver:
> >
> > #ifdef CONFIG_COMMON_CLK
> >         i2c_fsl->clk = clk_get(pdev, NULL);
> >         if (IS_ERR(i2c_fsl->clk))
> >                 return PTR_ERR(i2c_fsl->clk);
> > #endif
> >
> > You may have been inspired by that.
> > To the best of my understanding the ifdef can be dropped,
> > because clk_dev() is always defined, but retinr NULL if
> > HAVE_CLK is not defined.
> > I assume thsi is the case for PowerPC.
> 
> It doesn't really matter if this snip is present or not, since
> i2c_fls->clk would either be NULLed by the value returned by clk_get()
> or it would be zero from the time the memory for i2c_fls was
> kzalloc'ed. The point is that i2c_fsl->ifdr(AFAIU a clock divider)
> would be populated with a bogus value.
> 
> >
> > So the better fix would be to get rid of this ifdet,
> > rather than introducing a new one.
> 
> IMHO, the patch is very trivial yet between the two of us we already
> exchanged 4 e-mails discussing it, so this whole thing is rapidly
> descending into a bike-shedding exercise. Since I agree with you that
> this bug is very unlikely to be triggered, let's just drop this patch.
> 
Even if you are dropping this patch, let me add a little remark.

If you are going to send similar patches in the future, please take a
look at the IS_ENABLED macro. We try to get rid of those #ifdef
constructs in barebox and replace it with the above macro, which will
expand to 0 if the config option isn't enabled and the resulting code
will the be removed by the optimizer.

Regards,
Lucas 
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
