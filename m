Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuieO-0006pl-Rz
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 10:51:54 +0000
Date: Tue, 7 Feb 2012 11:51:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120207105141.GC3852@pengutronix.de>
References: <alpine.DEB.2.02.1202061612300.17751@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202061612300.17751@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: what is the purpose of config option HAS_OMAP_NAND?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Feb 06, 2012 at 04:14:45PM -0500, Robert P. J. Day wrote:
> 
>   based on the output from grep:
> 
> $ grep -r HAS_OMAP_NAND *
> arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
> arch/arm/mach-omap/Kconfig:config HAS_OMAP_NAND
> arch/arm/configs/phycard_a_l1_defconfig:CONFIG_HAS_OMAP_NAND=y
> $
> 
> i'm not sure of the purpose of that Kconfig option.  if nothing in the
> source tree tests it, what value does it have?  the definition of that
> option is simply:
> 
> config HAS_OMAP_NAND
>         bool
> 
> am i missing something subtle?

I can only guess that the nand driver depended on this. We can remove
this.

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
