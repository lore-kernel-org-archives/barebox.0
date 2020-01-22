Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuM52-0002yU-J6
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 19:54:26 +0000
Date: Wed, 22 Jan 2020 20:54:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200122195416.32acs5tzb5qlyufy@pengutronix.de>
References: <20200121114421.24401-1-ceggers@arri.de>
 <20200122082115.tgwaf72ootkmkf5s@pengutronix.de>
 <1607136.7P1be9KPAr@n95hx1g2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1607136.7P1be9KPAr@n95hx1g2>
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
Subject: Re: [PATCH 1/3] watchdog: Select CONFIG_PARAMETER
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

On Wed, Jan 22, 2020 at 10:39:07AM +0100, Christian Eggers wrote:
> Hi Sascha,
> 
> Am Mittwoch, 22. Januar 2020, 09:21:15 CET schrieb Sascha Hauer:
> > Hi Christian,
> >
> > > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > > index 45dd41a2a..34b7fea39 100644
> > > --- a/drivers/watchdog/Kconfig
> > > +++ b/drivers/watchdog/Kconfig
> > > @@ -4,6 +4,7 @@ config WATCHDOG_IMX_RESET_SOURCE
> > >
> > >  menuconfig WATCHDOG
> > >
> > >     bool "Watchdog support"
> > >
> > > +   select PARAMETER
> >
> > I think this goes into the wrong direction. With CONFIG_PARAMETER
> > enabled we get support for adjusting device parameters from the shell.
> > In environments without shell support parameter support is not needed.
> > For example the watchdog C API doesn't need parameter support and is
> > still usable.
> >
> > The static inline wrappers for dev_add_param_* should return NULL
> > instead of returning ERR_PTR(-ENOSYS).
> 
> initially I came to the same result. But previous commits to param.h went in
> the opposite direction:
> 
> > 03b59bdb64 ("paramter: The dev_add_param_*() return ERR_PTR(), change
> > no-ops") to return ERR_PTR(-ENOSYS) instead of NULL

Shouldn't have merged this one as it lacks an explanation why this has
been done. Marc, do you have an idea what the motivation for this patch
was?

> >
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> and
> 
> > c5d95eb4c7 ("param: make parameter functions more consistent")
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Most of the callers of dev_add_param*()  don't care about the returned param
> pointer at all. Some are checking against PTR_ERR() which would not be hit if
> returning NULL (this is what we want).
> 
> A few callers have to changed if a NULL pointer can be returned:
> - __nvvar_add()

nvvar doesn't really make sense without CONFIG_PARAMETER enabled. There
currently is no dependency between these options, but probably there
should be.

> - state_string_create()  stores the result in state_string::param, but seems
> to be used nowhere
> - mci_register() dito for mci::param_probe
> - state_uint8_create() dito for state_uint32::param
> - state_uint32_create() dito
> 
> For me it looks reasonable to return a NULL pointer if CONFIG_PARAMETER is not
> set (as you suggested). Only __nvvar_add() needs slight changes and I would
> remove needless storage of param in structs state_string, mci and
> state_uint32.
> 
> Shall I start?

Let's wait for Marc if he has an idea why we introduced 03b59bdb64, but
otherwise yes, this sounds like a good plan.


Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
