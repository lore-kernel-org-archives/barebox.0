Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgpP6-0004BE-4T
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 07:32:49 +0000
Date: Tue, 29 Sep 2015 09:32:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150929073225.GQ7858@pengutronix.de>
References: <1443064645-4007-1-git-send-email-andrew.smirnov@gmail.com>
 <1443086443.8476.7.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443086443.8476.7.camel@pengutronix.de>
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
Subject: Re: [PATCH] arm: Disable unaligned access if MMU is switched off
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Thu, Sep 24, 2015 at 11:20:43AM +0200, Lucas Stach wrote:
> Am Mittwoch, den 23.09.2015, 20:17 -0700 schrieb Andrey Smirnov:
> > Form reading ARM architecture related documentation if appears that
> > while unaligned memory access is supported by the processor in general
> > it is not supported if MMU is disabled.
> > 
> > The problem in question can be easilty reproduced by building the code
> > without this patch, MMU disabled and trying to run 'memtest'
> > command. Which would in turn call mem_test() which would eventually
> > call show_progress(). That last function, if build without
> > -mno-unaligned-access would result in unaligned memory access which
> > would result in Barebox hanging.
> > 
> The reasoning given here seems sound. Unaligned accesses do only work on
> cached memory on ARMv7.
> 
> > This patch is a very conservative attempt to make sure that any code
> > that can potentially be executed with MMU disabled is built with
> > unaligned memory accesses disabled.
> 
> The patch looks good as is, but I'm not sure we want to make this
> distinction in behavior between the different config options. Given that
> we should only have a very small amount of unaligned accesses anyway I
> think it might make sense to enable the compiler workaround always. But
> that would be for Sascha to decide.

Even with MMU enabled in the config we still run some initial portions
of the code with MMU disabled, so it seems safer to enable this option
unconditionally.
On the other hand disabling unaligned accesses makes the image around
1.5% bigger (tested with imx_v7_defconfig), so the compiler really makes
use of this option.
Ok, better safe than sorry, so I vote for always passing
-mno-unaligned-accesses.

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
