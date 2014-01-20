Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W59mY-0005bm-Au
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 08:00:31 +0000
Date: Mon, 20 Jan 2014 09:00:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140120080007.GG16215@pengutronix.de>
References: <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
 <20140110081302.GV6750@pengutronix.de>
 <CAJyuEefMzkW4mCfe+iR7FfVv6jeQMS3XuoPFtO3E8zNomecKoA@mail.gmail.com>
 <20140116141322.GX16215@pengutronix.de>
 <CAJyuEecWCmz=gxzMrbGB+=MWqAC9WGooCgTQs-E47rdaQPUOSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEecWCmz=gxzMrbGB+=MWqAC9WGooCgTQs-E47rdaQPUOSA@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 16, 2014 at 04:18:10PM -0500, Michael Burkey wrote:
> Sascha,
> 
> Eureka! Based on your comments, things are starting to make sense now.
> My brain wasn't fully comprehending how things were now supposed to
> work.
> 
> I now have my kernel booting and things are working much better now (I
> still have to get all my partition info specified properly, but that's
> a fairly well understood task).
> 
> I also went back and watched your ELCE 2013 "Barebox and the
> Bootloader Specification" presentation on Youtube. This REALLY helped
> clarify things a bit -- although the direction things seem to be
> heading (away from raw NOR/NAND, etc) don't fit with the world in
> which I typically work (dedicated hardware, totally custom designed
> and manufactured carrier boards, etc).

Indeed bootloader Spec is more targeted to desktop/server PCs. The
thinking is that if we use an established standard (ok, we may argue how
established Bootloader Spec is), things get easier for the embedded case
aswell as we shift away from specialized solutions.

> 
> As everything I am currently working with is specifically from a raw
> NAND device and using UBI, the Bootloader Specification doesn't really
> do anything to help us (also, we will probably have no need for ever
> using any standard distribution of Linux, since we do our own custom
> rootfs that is trimmed to eliminate everything we don't need).

We use Bbootloader Spec on UBI aswell here. It currently requires some
out of tree patches, but I'll mainline them soon. Unfortunately
Bootloader Spec on UBI is not as straightforward as it is on SD/MMC, but
then again using UBI is not straightforward anyway ;)

> 
> The way I have things setup now (and apparently working):
> 
> 1) I have a dtb file built into barebox which is what it is using to
> initially configure it's devices.

Yes.

> 
> 2) I have all of the legacy type information (MACH_TYPE) specified in
> the board.c file and in the /env/config file. This is required to use
> the existing (older) kernel we have for the Variscite SOM.

Yes.

> 
> 3) I am (currently) using kobs-ng under Linux to initially program
> barebox into our NAND part and I am then using barebox to program any
> of the additional partitions based on an upgrade script we have
> written.

Yes. Ideally we would have a barebox_update handler so that barebox
could write itself into flash, but we currently don't have the kobs-ng
like code.

> 
> So, to boot the kernel we are using currently, I have modified the
> barebox startup script to do an "oftree -f" after startup and then use
> bootm to launch the kernel from it's appropriate NAND partition.

Yes. I must admit I'm not that happy with the "oftree -f" part since it
is not very obvious, but I don't have a better idea and this case should
become very rare soon.

> 
> Based on my understanding, I could also just as easily (once we get a
> newer kernel), *not* do the "oftree -f" and allow barebox to pass the
> stored devicetree along to the kernel for initial configuration. I
> could also just as easily load, other, different devicetree's using
> "oftree -l" from either the barebox environment or from any other
> device I mounted (USB, MMC, etc).

Yes. But that would require barebox to 'know' if the kernel is
devicetree or not.

> 
> Personally, I doubt we will ever use any devicetree other than the one
> that is built into barebox initially, but having the ability to load
> another one manually is nice (especially for hardware testing).

Devicetrees change over time. Kernel folk agrees that they should not
change in incompatible ways, but it happens from time to time that
newer kernels need additional properties/nodes. Experience shows that
you can start a newer kernel with an older devicetree, but you might
loose some features. It's always advisable to make the devicetree
changeable.

> Honestly though, I personally find just making changes directly to the
> board-*.c file and rebuilding the kernel to be easier than reading
> through and changing dts files.

That perspective changes over time. When I started with devicetree it
felt just like an additional layer that I had to understand and an
addional source of errors. Now I don't want to miss devicetrees anymore.
For the first time devicetrees offer a way to describe the crosslinks
between devices (SSI unit and Codec, v4l2 device and i2c encoder) which
is not subsystem specific. We can conveniently reference gpios without
relying on hardcoded numbers. Different board dts files look nearly
identical. The same dts files that works for the kernel can be used to
bring up barebox. It takes some time but it's really worth it.

> 
> I'll try to get some of this cleaned up enough to turn into nice patch
> files to post to the mailing list within the next couple of weeks.

Nice ;)

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
