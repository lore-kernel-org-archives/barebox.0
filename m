Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X43sJ-0004TO-OE
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 08:02:12 +0000
Date: Mon, 7 Jul 2014 10:01:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707080146.GK23235@pengutronix.de>
References: <alpine.LFD.2.11.1407060802390.590@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407060802390.590@localhost>
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
Subject: Re: "make menuconfig" entries related to device tree seem kind of
 disorganized
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Jul 06, 2014 at 08:22:01AM -0400, Robert P. J. Day wrote:
> 
>   another issue i've thought about WRT device tree support in barebox
> is that the Kconfig options for DTs seem kind of scattered across the
> Kconfig files, whereas it might make more sense to simply put
> everything in a single top-level menu, "Device tree support". (as
> before, i'll use my config for the beaglebone black as a live
> example.)
> 
>   first, if i run "make menuconfig", right under "System Type",
> there's a selection for "link a DTB into the barebox image". but that
> really has *nothing* to do with the system type, does it? in fact,
> there seem to be a few entries under "System Type" that don't really
> reflect system type -- they're more "configuration" and "build"
> options, such as how to compile barebox, and so on. i'm not terribly
> concerned about those latter selections, but whether or not to link a
> DTB into barebox seems really unrelated to system type.

When the "Enable probing of devices from the devicetree" option is
enabled then this option has significant influence on the system type.

Anyway, as I explained in my last mail there are two ways of getting a
device tree into barebox. We could remove the "builtin device tree" way.
This would simplify things since we have less things to document and
won't need this option anymore.

> 
>   next, under top-level "Commands", way down under Miscellaneous,
> there are a number of DT-related commands -- of_dump, of_node,
> of_property and oftree, which are odd for a couple reasons. first,
> i've never been keen on *anything* being classified as
> "miscellaneous". :-) seriously, i've always felt like it's a bit of a
> defeat to throw something under "misc" because i can't figure out
> where it really belongs. but that's not all.

Ok, now that we have groups for commands the new obvious group is
"device tree commands"

> 
>   even if i (i think) don't select "Enable probing of devices from the
> devicetree" from under "Drivers", i still have the ability to select
> those DT-related commands, which is weird, and that's because rather
> than the DT-related commands *depending* on selecting DT support, it's
> set up the other way around -- those commands *select* OFTREE. that's
> backwards from the way it's normally done -- i remember numerous
> kernel programmers expressing frustration with an overuse of "select"
> in Kconfig files, rather than properly using dependencies. it would be
> far cleaner for the developer to first select some level of DT
> support, *after* which those commands suddenly become visible and
> selectable.
> 
>   side note: does the selection of "Enable probing of devices from the
> devicetree" really belong under "Drivers"? maybe i'm just not looking
> at it the right way, it doesn't really seem like what i normally
> consider a "driver." but ... no big deal.

It's under drivers because it's under drivers in the Kernel aswell. I
haven't thought further about this ;)

> 
>   anyway, it just seems like the DT stuff is spread confusingly across
> the config structure when it would make way more sense to put it all
> in one place, so that one could, in one click, select "Device tree
> support", whereupon one would be presented with everything related to
> device trees.

I would like to keep the commands under the "commands" toplevel menu.
Should we remove the builtin dtb way of handling device trees there is
only the "nable probing of devices from the devicetree" option left
which doesn't justify a menu.

> 
> p.s. what exactly is the difference between the CONFIG variables
> OFTREE versus OFDEVICE?

OFTREE is meant for basic device tree support, i.e. everything that
the of* commands need to work and everything to pass a device tree
to the kernel. So you need this when you want to start a kernel with
device tree support, but the barebox devices are instantiated from
platform devices.
When you want to instantiate the barebox devices from the device tree
then you need OFDEVICE aswell.

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
