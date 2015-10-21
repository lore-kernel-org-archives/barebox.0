Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zolyi-00064t-QE
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 05:30:26 +0000
Date: Wed, 21 Oct 2015 07:30:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151021053000.GU14476@pengutronix.de>
References: <1445303748.13196.89.camel@rtred1test09.kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445303748.13196.89.camel@rtred1test09.kymetacorp.com>
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

Hi Trent,

On Tue, Oct 20, 2015 at 01:15:44AM +0000, Trent Piepho wrote:
> On most boards, it seems the in flash environment is at some fixed
> location, and board code will create /dev/env0 from it using
> devfs_add_partition().  But a few boards don't work this way, and
> instead use a file located in a FAT filesystem in a flash partition.
> This is done for omap, raspberry-pi, and socfpga.  The ROM bootloader
> supporting partition tables probably has a lot to do with adding this
> feature.
> 
> It looks like the ability to load the env from a FAT file was first
> added in a7b2114, "ARM omap4: panda board", in 2011.  In this patch it
> was made to depend on CONFIG_DEFAULT_ENVIRONMENT.
> 
> But DEFAULT_ENVIRONMENT is "Compile in default environment".  It causes
> the default environment to be compiled into the barebox binary, to be
> used if the in flash env can not be used for some reason.  It's an
> orthogonal issue to where in flash the environment should come from, a
> fixed sector or a file in FAT partition.  It's possible to compile in or
> not compile in a default env with either method of storing the flash
> env.
> 
> So why does loading the env from a FAT partition depend on
> DEFAULT_ENVIRONMENT?  It does in the omap and socfpga code, but in the
> rasp-pi code it doesn't.

It seems we just picked the wrong define to depend on. Maybe the ifdef
CONFIG_DEFAULT_ENVIRONMENT in the omap code should just be dropped.

> 
> If one tries to build socfpga with DEFAULT_ENVIRONMENT off, you get no
> env at all, i.e. a broken barebox.  The env code tries to load
> from /dev/env0, which doesn't exist since there is no board code to
> create it for socfpga.  And no compiled in default since that was turned
> off.
> 
> If you turn it on, then you get the env in the FAT partition.  But you
> also get the env compiled into the barebox binary.  If there are large
> FPGA images stored in the env, this is very undesirable!

I do not really understand you here. Do you mean you compile the FPGA
images into the default environment so that they end up being part of
the barebox image, or do you mean you store the FPGA image in the
environment in the FAT partition?

> A too large
> barebox binary would seem to be the primary reason compiling in the env
> is supposed to be an optional setting.

I think the environment specific config options are in most cases either
all turned on or all turned off. Normally you want to have them turned
on, but in some cases like omap xloader there's no environment at all
and the options are all turned off. That could be the reason the
dependencies are a bit inconsistent, nobody really tries to enable half
of them. Anyway, patches welcome.

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
