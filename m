Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtVqp-0006kO-Pi
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 07:17:52 +0000
Date: Tue, 3 Nov 2015 08:17:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151103071728.GD25416@pengutronix.de>
References: <1445303748.13196.89.camel@rtred1test09.kymetacorp.com>
 <20151021053000.GU14476@pengutronix.de>
 <1445471669.13196.152.camel@rtred1test09.kymetacorp.com>
 <20151022073122.GJ14476@pengutronix.de>
 <1446495967.4488.81.camel@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446495967.4488.81.camel@localhost>
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
Subject: Re: In flash vs compiled environment for omap, rasp-pi, socfpga
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Nov 02, 2015 at 08:25:39PM +0000, Trent Piepho wrote:
> On Thu, 2015-10-22 at 09:31 +0200, Sascha Hauer wrote:
> > On Wed, Oct 21, 2015 at 11:54:23PM +0000, Trent Piepho wrote:
> > > A survey of the defconfigs shows that 25 do not have
> > > DEFAULT_ENVIRONMENT.  Of these 14 are omap, socfpga, imx, or at91
> > > xloaders.  Of the remaining eleven, 5 have env commands enabled, 3 have
> > > selected the simple shell which turns on environment variables, and the
> > > remaining 3 get the HUSH shell by default which also has environment
> > > variables.
> > 
> > Environment variables and the thing called "the environment" are
> > different things and do not depend on each other. Environment variables
> > are the variables in the shell (var=10...), getenv/setenv and stuff.
> > This has nothing to do with the saveable files we are talking about
> > here. Having one enabled without the other is perfectly valid.
> 
> This would be ENVIRONMENT_VARIABLES enabled but ENV_HANDLING not.  Which
> does seem to be perfectly valid.  If you have ENV_HANDLING but neither a
> compiled in env nor a in flash env, then you get an error when booting.
> 
> It also appears that if you have COMMAND_SUPPORT enabled, but do not
> have an env (compiled or flash), then you get errors from startup.c when
> it tries to read /env/bin/init.  And it won't run barebox_main in this
> case.  So I think if you had an xloader and turned on command support it
> wouldn't boot properly, since it would error out because of no env and
> not run the xload main.

I agree that this configuration is not really useful, but in the end
that's what the user asked for and that's what he gets.

> 
> But I don't really care about that.  What I'm interested in is having a
> flash env but no compiled in env.  It looks like there is a mistake in
> the omap & socfpga code that uses the config option for the latter to
> control the former.

yes.

> 
> If I just remove DEFAULT_ENVIRONMENT from controlling the flash env code
> (and I don't see any other boards with a config option to control their
> in flash env code), then some omap/socfpga boards will gain an in flash
> env they don't have now.  Most of these are xloader configs.  So maybe
> the flash env code should depend on !XLOADER?
> 
> If I do that, then only three configs gain in flash env that don't have
> it, omap3430_sdp3430_per_uart, omap3530_beagle_per_uart, and omap3_evm.
> 
> The first two are odd ones and I'm not sure if they are even supposed to
> work.  The last one seems like it might be broken.  It has
> COMMAND_SUPPORT enabled but no env, which gives that error from
> common/startup.c I mentioned above.

These configs haven't been touched actively for a long time. I doubt
they still do what they are once supposed to, maybe we should even
remove at least the *_per_uart configs.

> 
> Another option would be make the in flash env code depend on
> ENV_HANDLING.  That will not change any boards, as no boards without the
> in flash env want ENV_HANDLING.

I think this should be done. This would at least let the code depend on
the right config option. Does this solve your issues or are there other
things missing then?

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
