Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZI1k-0003kC-Ub
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 13:01:49 +0000
Date: Fri, 26 Feb 2016 14:01:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160226130125.GQ3939@pengutronix.de>
References: <56CF068C.4060901@eurek.it>
 <CAHQ1cqFoYAWjAZQrjNS6S-rpePGNM7oM=6K28aOnKciJMBHHOg@mail.gmail.com>
 <56D01BA9.9080707@eurek.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56D01BA9.9080707@eurek.it>
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
Subject: Re: iMX6Q First boot
To: gianluca <gianlucarenzi@eurek.it>
Cc: barebox@lists.infradead.org

On Fri, Feb 26, 2016 at 10:32:25AM +0100, gianluca wrote:
> On 02/25/2016 08:27 PM, Andrey Smirnov wrote:
> >On Thu, Feb 25, 2016 at 5:50 AM, gianluca <gianlucarenzi@eurek.it> wrote:
> >>Hello list,
> >>I am trying to bootup my custom designed board (actually a rev.0, but I know
> >>it will need a rev.1 ASAP ;-).
> >>
> >>I started with the latest (2016.02) barebox version, adding my board to the
> >>Kconfig & Makefile stuff, copying the udoo stuff to the
> >>arch/arm/boards/eurek-ek360 (as the board name is EK360) and cut-off any
> >>unneeded initialization.
> >>
> >>I am using imx_v7_defconfig as a starting point for configuration.
> >>
> >>I kept the device tree file as short as possible, keeping only the model,
> >>memory, gpio-pinmux for uart (debug) and the uart3 configurator.
> >>
> >>In attachment there are the board.c, the lowlevel.c and the device-tree
> >>file.
> >
> >gianluca, the information you included is somewhat incomplete.
> >Attached file is a .dsti file (include file, not a standalone .dts)
> >which references phandles not defined in the file itself, so it seems
> >like there should be more to it.
> >
> 
> The .dts file is almost empty. In attachment there is such a file. ;-)
> 
> 
> >However there are a couple of things to note about the code you included:
> >
> >  - The device tree code that you provided doesn't have
> >     chosen {
> >           linux,stdout-path = <something>;
> >      };
> >      which means that BB's console subsystem doesn't have a assigned
> >"stdout" device, which might explain why you don't see the output
> >
> 
> Even if it says: linux,stdout-path = .... ??? I suppose it was good only for
> Linux Kernel.

Both barebox and the kernel treat the "linux,stdout-path" and
"stdout-path" property equally. It doesn't matter which one you use, but
one of them must be present. Otherwise barebox won't find the console
device. "stdout-path" is preferred over the linux, variant.

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
