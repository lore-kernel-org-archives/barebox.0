Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ278-0003FV-PY
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 16:16:28 +0000
Date: Thu, 15 Nov 2012 17:16:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115161615.GI10369@pengutronix.de>
References: <alpine.DEB.2.02.1211150924030.1247@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211150924030.1247@oneiric>
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
Subject: Re: how easy to add extra config for NAND-less beagle?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Robert,

On Thu, Nov 15, 2012 at 09:36:37AM -0500, Robert P. J. Day wrote:
> 
>   returning to playing with barebox after lengthy hiatus and i asked
> an equivalent question on the u-boot list, let's see if it's relevant
> here.
> 
>   i did a regular configure and build for my beagle xM (rev C) which,
> unlike the beagle classic, has no NAND flash:
> 
> $ make omap3530_beagle_xload_defconfig ; make
> $ make omap3530_beagle_defconfig ; make
> 
> then copied MLO and barebox.bin to an appropriate card and, lo, it
> booted nicely and i'm currently sitting in barebox:
> 
>   barebox@Texas Instrument's Beagle:/ version
> 
>   barebox 2012.10.0-00283-gd65d9df #2 Thu Nov 15 06:45:21 EST 2012
> 
> thing is, this build has a good deal of NAND-related functionality
> that is of no use whatsoever on the current beagle xMs, so i'm
> interested in how little work it would take to add an extra config
> that would deselect everything related to NAND.  (obviously, having
> that functionality there doesn't *hurt*, but i'm planning to use
> barebox in my new embedded linux courses and it would be nice to be
> able to build for an xM and have it *totally* correspond to the actual
> hardware.)  it shouldn't be hard -- simply deselecting anything
> related to NAND, MTD or JFFS2 should do the trick.

Disable MTD support and if you want also the protect/erase commands:

make menuconfig

Drivers                         --->
  [ ] Memory Technology Device (MTD) support  --->

commands                        --->
  flash                           --->
    [ ] protect/erase

Saves you around 35Kb of binary space

> 
> rday
> 
> p.s.  when i run "devinfo", i see a couple NAND-related entries:
> 
> devices:
> ... snip ...
> `---- gpmc_nand0

The nand device, probably present even when you disable nand support.
However, no driver will bind to it if you disable it.

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
