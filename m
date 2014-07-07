Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X43Tl-0001LQ-4y
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 07:36:50 +0000
Date: Mon, 7 Jul 2014 09:36:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707073623.GJ23235@pengutronix.de>
References: <alpine.LFD.2.11.1407051023580.17423@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407051023580.17423@localhost>
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
Subject: Re: device trees, dtc and beaglebone black
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sat, Jul 05, 2014 at 10:45:25AM -0400, Robert P. J. Day wrote:
> 
>   first in a series of questions as i try to puzzle out device trees
> and the config options related to it -- first few questions will
> undoubtedly be simple as i want to make absolutely sure i don't
> misunderstand something basic that screws me up later. and i'll ask in
> relation to a real-life example i'm interested in -- the beaglebone
> black (BBB).
> 
>   first, i notice this page on device trees on the barebox wiki:
> 
> http://wiki.barebox.org/doku.php?id=user:devicetree
> 
> is it still reasonably up to date? seems like it has useful
> information that isn't yet in the user manual.

dumping device trees is no longer done with the oftree command, we
have a dedicated of_dump command now. The device tree overlay or merge
support stuff was removed in:

commit d384b5639fc1a3cff60610e375a2096de413b71f
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon May 19 14:40:03 2014 +0200

    of: Drop devicetree merge support

    I assume I am the only person knowing that barebox is able to
    merge devicetrees. This feature seems broken for a while now since
    trying to merge devicetress results in:

    unflatten: too many end nodes

    Remove this feature to save the complexity.

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


> 
>   next, with the BBB, i realize there are two configs and builds that
> must be done:
> 
>  $ make omap3530_beagle_xload_defconfig
>  $ make omap3530_beagle_defconfig

Nope. These configs are for the beaglebo*ard*, not the beaglebone. Maybe
we should rename the config files. At the time they were introduced
there was no beaglebone.

The configs you need for the beaglebone are:

am335x_mlo_defconfig
am335x_defconfig

Both come with device tree support.

> 
> the first is responsible for building the first-stage (MLO) loader for
> the BBB, and it appears to have no device tree functionality whatever,
> so it seems i can safely ignore that build, so i'll restrict myself to
> the second configure and build for all future questions.
> 
>   in terms of building and linking a DTB directly into the barebox
> executable, i can see the "System Type" selections:
> 
>   [*] link a DTB into the barebox image
>     () DTB to build into the barebox image (NEW)

There are generally two ways to get a device tree into barebox:

- enable the builtin DTB option. In this case we have a single DTB built
  into the binary. It is accessible as __dtb_start in the binary. The
  code in arch/arm/cpu/dtb.c will pass this to of_unflatten_dtb(),
  of_set_root_node() and of_probe() to instantiate the devices. Since
  there is a single config option and only one pointer in the binary
  this means there can be only one device tree in the binary.

- Disable the builtin DTB option and instead compile the device tree
  with pbl-y or obj-y in arch/arm/dts/Makefile. With this option the
  device tree will be accessible in the binary with a symbol name
  derived from the filename. This means there can be many device trees
  in the binary and makes it possible to build a binary for multiple
  boards.

Due to the two stage boot process the beaglebone startup and the device
tree handling is quite complicated. There are three different device
trees involed: am335x-bone-common.dts, am335x-bone.dts and
am335x-boneblack.dts.

The second way is the way used by the beaglebone. It goes like this:

There are two binaries involved, built by the two configs. The *mlo*
config runs from SRAM which means we have limited space. The entry point
for this image is:

ENTRY_FUNCTION(start_am33xx_beaglebone_sram, bootinfo, r1, r2)

This function does the SDRAM setup and then calls the barebox_arm_entry
function with this devicetree:

__dtb_am335x_bone_common_start

The symbol name can be derived from the filename
(am335x-bone-common.dts) by replacing dashes with underscores and adding
a __dtb_ to the beginning and a _start to the end.

For the real barebox image the entry point is:

ENTRY_FUNCTION(start_am33xx_beaglebone_sdram, r0, r1, r2)

And here we finally differentiate between both variants:

	if (is_beaglebone_black()) {
                sdram_size = SZ_512M;
                fdt = __dtb_am335x_boneblack_start;
        } else {
                sdram_size = SZ_256M;
                fdt = __dtb_am335x_bone_start;
        }


> =====
> 
> it appears that DTC is explicitly selected by either of OFTREE or
> OFDEVICE. but the simple selection of device tree support doesn't seem
> to require building "dtc" unless you need to compile a device tree
> yourself, does it? i tested this -- i selected not to have a builtin
> DTB, but "dtc" was still compiled for me. any reason why? it doesn't
> hurt, of course, but it seems unnecessary. or am i misreading
> something?

dtc is needed whenever a .dtb.o has to be built. Look for lines like:

pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o

This triggers a Make rule to build a dtb using the dtc. This could be
anywhere in the Makefiles, so maybe dtc should always be built.

In short you are right. dtc might be built when it's not actually
needed, but this doesn't hurt.

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
