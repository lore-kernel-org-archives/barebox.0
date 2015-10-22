Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpALg-0004jg-MW
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 07:31:45 +0000
Date: Thu, 22 Oct 2015 09:31:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151022073122.GJ14476@pengutronix.de>
References: <1445303748.13196.89.camel@rtred1test09.kymetacorp.com>
 <20151021053000.GU14476@pengutronix.de>
 <1445471669.13196.152.camel@rtred1test09.kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445471669.13196.152.camel@rtred1test09.kymetacorp.com>
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

On Wed, Oct 21, 2015 at 11:54:23PM +0000, Trent Piepho wrote:
> On Wed, 2015-10-21 at 07:30 +0200, Sascha Hauer wrote:
> > > So why does loading the env from a FAT partition depend on
> > > DEFAULT_ENVIRONMENT?  It does in the omap and socfpga code, but in the
> > > rasp-pi code it doesn't.
> > 
> > It seems we just picked the wrong define to depend on. Maybe the ifdef
> > CONFIG_DEFAULT_ENVIRONMENT in the omap code should just be dropped.
> 
> I've changed socfpga to depend on the xloader option instead, so that
> the env loading function is not present in the xloader.  This seems to
> work and gives me a booting xloader and main barebox with the in-flash
> env.
> 
> > > If you turn it on, then you get the env in the FAT partition.  But you
> > > also get the env compiled into the barebox binary.  If there are large
> > > FPGA images stored in the env, this is very undesirable!
> > 
> > I do not really understand you here. Do you mean you compile the FPGA
> > images into the default environment so that they end up being part of
> > the barebox image, or do you mean you store the FPGA image in the
> > environment in the FAT partition?
> 
> The latter.  But turning on DEFAULT_ENVIRONMENT will also try to give
> you the former.  This may very well not be the best way to present fpga
> images to barebox to load, but it still seems like the flash env loading
> code is using the wrong config option.
> 
> 
> > I think the environment specific config options are in most cases either
> > all turned on or all turned off. Normally you want to have them turned
> > on, but in some cases like omap xloader there's no environment at all
> > and the options are all turned off. That could be the reason the
> > dependencies are a bit inconsistent, nobody really tries to enable half
> > of them. Anyway, patches welcome.
> 
> A survey of the defconfigs shows that 25 do not have
> DEFAULT_ENVIRONMENT.  Of these 14 are omap, socfpga, imx, or at91
> xloaders.  Of the remaining eleven, 5 have env commands enabled, 3 have
> selected the simple shell which turns on environment variables, and the
> remaining 3 get the HUSH shell by default which also has environment
> variables.

Environment variables and the thing called "the environment" are
different things and do not depend on each other. Environment variables
are the variables in the shell (var=10...), getenv/setenv and stuff.
This has nothing to do with the saveable files we are talking about
here. Having one enabled without the other is perfectly valid.

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
